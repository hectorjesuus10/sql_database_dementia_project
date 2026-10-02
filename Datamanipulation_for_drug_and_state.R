library(readxl)
library(dplyr)
library(readr)
library(writexl)

# 1. Extract the dementia drugs list from the Excel file
drugs_df <- read_excel("dataset treatment.xlsx", sheet = "Los 11 que necesito", skip = 1)

dementia_drugs <- drugs_df$`Brand Name (dataset)` %>%
  toupper() %>%
  trimws() %>%
  .[!is.na(.) & . != "NO ENCONTRADO EN ESTE DATASET"]

# 2. Load the main dataset
main_df <- read_excel("Drug_State.xlsx")

# 3. Create a mapping table for Full State Names from State Abbreviations
state_lookup <- data.frame(
  State = c('AK', 'AL', 'AR', 'AZ', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 
            'IA', 'ID', 'IL', 'IN', 'KS', 'KY', 'LA', 'ME', 'MI', 'MN', 
            'MO', 'MS', 'NC', 'NE', 'NH', 'NJ', 'NV', 'NY', 'OH', 'OK', 'XX'),
  State_Full = c('Alaska', 'Alabama', 'Arkansas', 'Arizona', 'California', 
                 'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 
                 'Iowa', 'Idaho', 'Illinois', 'Indiana', 'Kansas', 'Kentucky', 
                 'Louisiana', 'Maine', 'Michigan', 'Minnesota', 'Missouri', 
                 'Mississippi', 'North Carolina', 'Nebraska', 'New Hampshire', 
                 'New Jersey', 'Nevada', 'New York', 'Ohio', 'Oklahoma', 'Unknown')
)

# 4. Create a mapping vector/dataframe for Brand Name -> Actual (Generic) Drug
drug_mapping <- c(
  "BELSOMRA" = "Suvorexant",
  "REXULTI" = "Brexpiprazole",
  "AUVELITY" = "Dextromethorphan / Bupropion",
  "KISUNLA" = "Donanemab-azbt",
  "EXELON" = "Rivastigmine",
  "LEQEMBI" = "Lecanemab-irmb",
  "NAMZARIC" = "Memantine / Donepezil",
  "ARICEPT" = "Donepezil"
)

# 5. Process the main dataset: Filter, Map State Names, and Map Actual Drug Names
final_df <- main_df %>%
  select(State, `Product Name`) %>%
  filter(trimws(toupper(`Product Name`)) %in% dementia_drugs) %>%
  # Join with state lookup to get full names
  left_join(state_lookup, by = "State") %>%
  # Clean up and order columns (Replacing short state with full state name)
  mutate(
    State = ifelse(is.na(State_Full), State, State_Full),
    `Brand Name` = `Product Name`,
    `Actual Drug` = drug_mapping[toupper(trimws(`Product Name`))]
  ) %>%
  select(State, `Brand Name`, `Actual Drug`) %>%
  # Replace any unmapped generic names with a fallback if needed
  mutate(`Actual Drug` = coalesce(`Actual Drug`, `Brand Name`))

# View the final dataset in R console
print(final_df)

# 6. Export to Excel
write_xlsx(final_df, "final_output_updated.xlsx")
