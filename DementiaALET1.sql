DROP DATABASE IF EXISTS DEMENTIA;
CREATE DATABASE DEMENTIA;
USE DEMENTIA;

CREATE TABLE State (
    State_name VARCHAR(50) PRIMARY KEY,
    Climate ENUM('Tropical','Arid','Mediterranean','Humid Subtropical','Humid Continental','Subarctic','Highland','Polar') NOT NULL
);

CREATE TABLE State_year_stats (
    State_name VARCHAR(50) NOT NULL,
    Stats_year SMALLINT NOT NULL,
    Number_of_inhabitants BIGINT NOT NULL,
    Number_of_hospitals INT NOT NULL,
    Male_to_female_ratio DECIMAL(4,2) NOT NULL,
    GDP_per_person DECIMAL(10,2) NOT NULL,        -- USD per year
    Healthcare_funding DECIMAL(15,2) NOT NULL,
    avg_dementia_rate DECIMAL(5,2) NOT NULL,      -- percent
    PRIMARY KEY (State_name, Stats_year),
    FOREIGN KEY (State_name) REFERENCES State(State_name) ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (Stats_year BETWEEN 1900 AND 2100),
    CHECK (Number_of_inhabitants > 0),
    CHECK (Number_of_hospitals >= 0),
    CHECK (Male_to_female_ratio > 0),
    CHECK (GDP_per_person > 0),
    CHECK (Healthcare_funding >= 0),
    CHECK (avg_dementia_rate BETWEEN 0 AND 100)
);

CREATE TABLE Insurance (
    Insurance_company_name VARCHAR(50),
    Insurance_plan VARCHAR(50), 
    Number_of_people_covered INT,
    PRIMARY KEY(Insurance_company_name,Insurance_plan),
    CHECK (Number_of_people_covered >= 0)
);

CREATE TABLE Treatment (
    Treatment_id INT AUTO_INCREMENT PRIMARY KEY,
    drug_name VARCHAR(50) UNIQUE,
    cost DECIMAL(10,2) UNIQUE,
    number_of_people_treated INT,
    CHECK (cost >= 0),
    CHECK (number_of_people_treated >= 0)
);

CREATE TABLE GP (
    GP_ID VARCHAR(10) PRIMARY KEY, 
    Price DECIMAL(10,2),
    State VARCHAR(50),
    Medical_practise_name VARCHAR(20),
    GP_name VARCHAR(100) UNIQUE, 
    FOREIGN KEY (State) REFERENCES State(State_name),
    CHECK (Price >= 0)

);

CREATE TABLE Patient(
    Patient_ID INT AUTO_INCREMENT PRIMARY KEY,  
    min_age INT ,
    max_age INT ,
    Sex ENUM('Male','Female','Other'),
    Ethnicity VARCHAR(20) ,
    Diet VARCHAR (30),
    BMI FLOAT(4,2),
    Income FLOAT,
    Type_of_dementia VARCHAR(40)  ,
    Level_of_highest_Education VARCHAR(40) ,
    Marital_status ENUM ('Single','Married','Divorced', 'In a relationship','Widowed','Other'),
    State VARCHAR(50) ,
    FOREIGN KEY (State) REFERENCES State(State_name)  ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (BMI BETWEEN 0 AND 50),
    CHECK (max_age>=min_age),
    CHECK (Income >= 0)
);

CREATE TABLE state_insurance (
    State_name VARCHAR(50),
    Insurance_company_name VARCHAR(50),
    Insurance_plan VARCHAR(50),
    PRIMARY KEY (State_name, Insurance_company_name, Insurance_plan),
    FOREIGN KEY (State_name) REFERENCES State(State_name)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Insurance_company_name, Insurance_plan) 
        REFERENCES Insurance(Insurance_company_name, Insurance_plan) 
        ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE treatments_available_in_states (
    Treatment_id INT NOT NULL,
    State_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (Treatment_id, State_name),
    FOREIGN KEY (Treatment_id) REFERENCES Treatment(Treatment_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (State_name) REFERENCES State(State_name) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE Patient_treatment(
    patient_treatment_id INT AUTO_INCREMENT PRIMARY KEY,
    drug_name VARCHAR(50),
    patient_ID INT,
    start_date DATE,
    end_date DATE,
    treatment_status ENUM('Ongoing', 'Discontinued') NOT NULL DEFAULT 'Ongoing', 
    health_outcome ENUM('Improved','Stable','Worsened') NULL,
    UNIQUE (drug_name, patient_ID, start_date),  -- Makes a unique combination of drugname, patient and start date as none of them are unique individually. Without including start_date, it would be impossible that a patient take the same treatment multiple times in different periods --
    FOREIGN KEY (drug_name) REFERENCES Treatment(drug_name)  ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (patient_ID) REFERENCES Patient(Patient_ID)  ON DELETE CASCADE ON UPDATE CASCADE

);

CREATE TABLE GP_insurance (
    GP_ID VARCHAR(10),
    Insurance_company_name VARCHAR(50),
    Insurance_plan VARCHAR(50),
    Coverage_Percentage DECIMAL(5,2),
    PRIMARY KEY (GP_ID, Insurance_company_name, Insurance_plan),
    FOREIGN KEY (GP_ID) REFERENCES GP(GP_ID) ,
    FOREIGN KEY (Insurance_company_name, Insurance_plan) REFERENCES Insurance(Insurance_company_name, Insurance_plan)
);
CREATE TABLE patients_treated_at_gp (
    Patient_ID INT NOT NULL,
    GP_name VARCHAR(20) NOT NULL,
    PRIMARY KEY (Patient_ID, GP_name),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)  ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (GP_name) REFERENCES GP(GP_name)  ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE GP_treatment (
    GP_ID VARCHAR(10) NOT NULL,
    Treatment_id INT NOT NULL,
    PRIMARY KEY (GP_ID, Treatment_id),
    FOREIGN KEY (GP_ID) REFERENCES GP(GP_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Treatment_id) REFERENCES Treatment(Treatment_id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE individual_insurance_plan (
    Patient_ID INT,
    Insurance_company_name VARCHAR(50),
    Insurance_plan VARCHAR(50),
    PRIMARY KEY (Patient_ID, Insurance_company_name, Insurance_plan),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Insurance_company_name, Insurance_plan) REFERENCES Insurance(Insurance_company_name, Insurance_plan)
);
-- ^^in here it looks for the specific combination of insurance company name with that plan

CREATE TABLE patient_comorbidity (
    Patient_ID INT NOT NULL,
    Disease_name VARCHAR(70) NOT NULL,
    Comorbidity_patient_ID INT AUTO_INCREMENT PRIMARY KEY,
    
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)  ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE insurance_therapy_coverage (
    Drug_name VARCHAR(50),
    cost DECIMAL(10,2),
    insurance_therapy_coverage_percentage FLOAT(3,2),
    FOREIGN KEY (Drug_name) REFERENCES Treatment(Drug_name),
    FOREIGN KEY (cost) REFERENCES Treatment(cost)  ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (Drug_name)
    
);





