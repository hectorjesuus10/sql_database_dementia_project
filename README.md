A guideline through the implementation of the real data.


Our research involved finding multiple datasets concerning the relations “State”, “State per Year”, “GP”, “Treatment”, “Patient”, “Patient Comorbidity" and “Treatments Available in States”	.
We found approximately ten datasets, six of which were similar datasets that saw the variable “State per year” through the course of more than thirty different years. 
All datasets reported had a relevant size, in some cases even requiring manipulation to return relevant pieces of information.


Centers for Medicare & Medicaid Services. (n.d.). NPI Registry [Data set]. U.S. Department of Health and Human Services. https://npiregistry.cms.hhs.gov/results (License: Public Domain / Open Access).
Zenodo. (n.d.). Comorbidity / Patient Data (Record No. 16755408) [Data set]. CERN Zenodo Repository. https://zenodo.org/records/16755408 (License: Creative Commons CC BY 4.0 / Open Access).
Centers for Medicare & Medicaid Services. (n.d.). Medicare Part D Spending by Drug (Treatment Table) [Data set]. CMS Open Data Portal. https://data.cms.gov/summary-statistics-on-use-and-payments/medicare-medicaid-spending-by-drug/medicare-part-d-spending-by-drug (License: Public Domain / Open Government License).
Centers for Medicare & Medicaid Services. (n.d.). Treatment Available in States (Dataset ID: 2957a7f9-9a15-453e-9afd-3bbdcbac8fd3) [Data set]. Medicaid Open Data Portal. https://data.medicaid.gov/dataset/2957a7f9-9a15-453e-9afd-3bbdcbac8fd3 (License: Public Domain / Open Government License).
U.S. Census Bureau. (2024, September 16). 1990s: State tables – Estimates of states by age, sex, race and Hispanic origin [Data set]. U.S. Department of Commerce. https://www.census.gov/data/tables/time-series/demo/popest/1990s-state.html (License: Public Domain / Open Government Data)

U.S. Census Bureau. (2021, October 8). State intercensal tables: 2000-2010 [Data set]. U.S. Department of Commerce. https://www.census.gov/data/tables/time-series/demo/popest/intercensal-2000-2010-state.html (License: Public Domain / Open Government Data)
U.S. Census Bureau. (2021, October). Vintage 2020 evaluation estimates: State total population estimates and components of change (2010–2020) [Data set]. U.S. Department of Commerce. https://www.census.gov/programs-surveys/popest/technical-documentation/research/evaluation-estimates/2020-evaluation-estimates/2010s-state-total.html(License: Public Domain / Open Government Data)
U.S. Census Bureau. (2026, May 26). State population totals and components of change: 2020-2025 [Data set]. U.S. Department of Commerce. https://www.census.gov/data/tables/time-series/demo/popest/2020s-state-total.html (License: Public Domain / Open Government Data)
KFF. (n.d.). Key facts about hospitals: National spending on hospital care [Data analysis]. Kaiser Family Foundation. https://www.kff.org/health-costs/key-facts-about-hospitals/?entry=national-hospital-spending-national-spending-on-hospital-care (License: Open Access / CC BY-NC-ND 4.0)
U.S. Census Bureau. (2026, June). State population by characteristics: 2020–2025 [Data set]. U.S. Department of Commerce. https://www.census.gov/data/tables/time-series/demo/popest/2020s-state-detail.html (License: Public Domain / Open Government Data)

Data Handling and Database Implementation
Fixing the Database
First of all, we tried to work on implementing some corrections in our database.

While previously our insurance relation had the “insurance company name” as a unique primary key, this made the relation ambiguous and potentially misleading, since the attribute “insurance plan” could have different tuples for each insurance company, or could be shared by multiple companies. For this reason we decided to create a composite key with both the company name and the plan.

Furthermore, we decided to spit the entity state into two. We created the entity “State in year” as the information contained in the state table could vary drastically as time passes. For this reason we decided to retain in the table state only the variables state name and climate, i.e. the only ones that are not subject to regular change. For the rest, attributes such as "healthcare funding”, “GDP per year” and “average dementia rate” can vary by year, reason why they were transferred to the new entity.

In conclusion, the “Medical practice name” in GP was in a “VARCHAR(20)” datatype, however after reviewing the real GP data, we realized it was not enough so we updated it to “VARCHAR(100)”. 
We also made some minor changes of this kind, for instance by fixing the decimal in the attribute “Coverage percentage” (“GP insurance” table) and adding some “NOT NULL” all over the entities.

By making these changes, we had to relax the previous constraints on many children tables, adding the key “UNIQUE” to some attributes or changing the structure of some foreign keys, the results of which have been reported in the repository and can be found in the new ERD file.

Implementing the Search Results

Moving to the search results, the data we found for patient and comorbidity was very limited, only a few of the attributes were covered, hence we had to remove our not null constraints. The age was also given in a range rather than one number, for this reason we had to change the age attribute to minimum age and maximum age, where minimum age is the youngest they can be and maximum age is the oldest they can be.

As for the entity “treatment”, the attribute “number of people treated” for the drug “Donanemab” is NULL. This is due to the fact that there were fewer than 11 people taking the treatment, and CMS applies a data suppression policy for privacy reasons when the number of people treated is very low.
The columns cost and number_of_people_treated of Treatment Benzgalantamine are also “NULL”, because it is a new treatment and the dataset does not yet include information.

In addition, for the variable “State years stats”, we conducted a search over a large variety of years, approximately twentyfive, all coming from the same database. By carefully extracting each independent dataset focusing on a decade, from 1990 to 2000, 2000 to 2010, 2010-2020 and finally 2020-2025 we proceeded to merge the data into SQL, all resulting in a large dataset represented by our relation. 



When integrating the relation “GP”  we utilized the “NPPES NPI Registry”, a database by Centers for Medicare & Medicaid Services (CMS) containing official records for healthcare providers. We specifically run a query to find general practitioners belonging to any state, including “geriatric” as a taxonomy description. This was done in order to find all practitioners which were more likely to deal with elders, as the most frequent temporal window for dementia is between 65 and 85 years old.
The research resulted in  9 cases where the same GP (GP_name) appeared as the authorized official for more than one organization. This revealed that our UNIQUE constraint on GP_name assumes each GP works at only one practice, which does not hold true in reality. We decided to remove the duplicates, keeping a single practice per physician, and documented this as a known limitation of our model.

As for treatment available in states, we had to deal with some dataset manipulation. Starting from the treatment dataset, we found a dataset published by medicaid, which dealt with drug names ordered in different states.
By running some code in R, which can be found attached in the git repository, we managed to create a final table which reflected the entity treatment available in state.
Strictly speaking, we first noticed we require only two out of the many variables of the medicaid datasets, these were brand name and state. 
Both had some major problems, in principle state was a string composed of the first two letters only, which we fixed by creating two vectors, one with the two letters and one with the complete state names. 
Unfortunately, brand name had to do with the drug name, reason why we decided to utilize the treatment table, reading it in R, and equating the drug name with the brand name (the company producing them).
We then filter the two, creating an unique table that included the state names and the drug names, perfectly mimicking the “treatments available in states” relation.

Finally, several of our original example queries no longer execute successfully due to changes or gaps in the updated dataset. For instance, because the dataset no longer contained patients with diabetes as a comorbidity, we updated this condition to essential hypertension. Similarly, the first query failed because specific dementia types were not defined in the data. To address these gaps and overcome the limited availability of public healthcare data, we plan to supplement the real dataset with complementary synthetic (mock) data where necessary.


Addressing the Limitations
Although we were not able to implement regional level data, rather than state level ones, and we did not implement numerical treatment outcomes, we still were able to address some limitations proposed in the video explanation to customers.

We first solved the issue of assuming each insurance company has similar insurance plans by adding a composite primary key between “insurance company name” and “insurance plan” in the “insurance relation”.
Furthermore we dealt with the assumptions that some variables are independent of time, by adding the entity “state years” that deals with many factors over the course of thirty-five years.

Finally, given the short amount of time we conducted a brief search on normalisation, resulting in finding all the tables normalized. However due to the large volume of data in the table “state years”, further investigations should be conducted to properly search normalization, which will be our objective for next week.
