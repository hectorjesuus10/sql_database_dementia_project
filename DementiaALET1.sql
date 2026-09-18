DROP DATABASE IF EXISTS DEMENTIA;
CREATE DATABASE DEMENTIA;
USE DEMENTIA;

CREATE TABLE State (
    State_name VARCHAR(50) PRIMARY KEY,
    Climate ENUM('Tropical','Arid','Mediterranean','Humid Subtropical','Humid Continental','Subarctic','Highland','Polar'), -- creates a list of allowed climates 
    Number_of_inhabitants BIGINT,
    Number_of_hospitals INT,
    Male_to_female_ratio DECIMAL(4,2),
    GDP_per_person DECIMAL(10,2),
    Healthcare_funding DECIMAL(15,2),
    avg_dementia_rate DECIMAL(5,2),
);


CREATE TABLE Insurance (
    Insurance_company_name VARCHAR(50) PRIMARY KEY,
    Insurance_plan VARCHAR(20) UNIQUE,
    Number_of_people_covered INT
);

CREATE TABLE Treatment (
    drug_name VARCHAR(50) PRIMARY KEY,
    cost DECIMAL(10,2),
    State VARCHAR(50),
    number_of_people_treated INT,
    FOREIGN KEY (State) REFERENCES State(state_name)

);

CREATE TABLE GP (
    GP_ID VARCHAR(10) PRIMARY KEY,
    Price DECIMAL(10,2),
    State VARCHAR(50),
    FOREIGN KEY (State) REFERENCES State(State_name),
    Medical_practise_name VARCHAR(20),
    GP_name VARCHAR(20) UNIQUE

);

CREATE TABLE Patient(
    Patient_ID CHAR(12) DEFAULT (UUID()) PRIMARY KEY,  -- creating a patient_id which is unique and is genertated a new one for each patient. As the hospital can have many patients UUID is used
    Age INT,
    Sex VARCHAR(6),
    Ethnicity VARCHAR(20),
    Diet VARCHAR (30),
    BMI FLOAT(4,2),
    Income FLOAT,
    Type_of_dementia VARCHAR(40),
    Level_of_highest_Education VARCHAR(40),
    Marital_status VARCHAR(20),
    Treatment VARCHAR(50),
    State VARCHAR(50),
    FOREIGN KEY (Treatment) REFERENCES Treatment(Drug_name), -- drug_name that the patient takes is the name from the Treatment table
    FOREIGN KEY (State) REFERENCES State(State_name)


);

CREATE TABLE state_insurance (
    State_name VARCHAR(50),
    Insurance_company_name VARCHAR(50),
    PRIMARY KEY (State_name, Insurance_company_name),
    FOREIGN KEY (State_name) REFERENCES State(State_name)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Insurance_company_name) REFERENCES Insurance(Insurance_company_name)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE treatments_available_in_states (
    state_treatment_ID INT AUTO_INCREMENT,
    Therapy             VARCHAR(50) NOT NULL,
    State_name          VARCHAR(50) NOT NULL,
    PRIMARY KEY (state_treatment_ID),
    UNIQUE (Therapy, State_name),
    FOREIGN KEY (Therapy) REFERENCES Treatment(Drug_name)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (State_name) REFERENCES State(State_name)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Patient_treatment(
    drug_name VARCHAR(50),
    patient_ID CHAR(12),
    start_date DATE,
    end_date DATE,
    outcome VARCHAR(50),
    PRIMARY KEY (drug_name, patient_ID),  -- creates a composite primary key of drugname and patient as patient nor drugname is unique but combined it is
    FOREIGN KEY (drug_name) REFERENCES Treatment(drug_name),
    FOREIGN KEY (patient_ID) REFERENCES Patient(Patient_ID)

);

CREATE TABLE GP_insurance (
    GP_ID VARCHAR(10),
    Insurance_plan VARCHAR(20),
    GP_insurance_coverage DECIMAL(5,2), -- It will represent a percentage of the price of a GP visit covered by the insurance (e.g., 80.00 = 80%)
    PRIMARY KEY (GP_ID, Insurance_plan),
    FOREIGN KEY (GP_ID) REFERENCES GP(GP_ID),
    FOREIGN KEY (Insurance_plan) REFERENCES Insurance(Insurance_plan)
);

CREATE TABLE patients_treated_at_gp (
    Patient_ID CHAR(12),
    GP_name VARCHAR(20),
    PRIMARY KEY (Patient_ID, GP_name),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (GP_name) REFERENCES GP(GP_name)
);

CREATE TABLE GP_treatment (
    GP_ID VARCHAR(10),
    Drug_name VARCHAR(50),
    PRIMARY KEY (GP_ID, Drug_name),
    FOREIGN KEY (GP_ID) REFERENCES GP(GP_ID),
    FOREIGN KEY (Drug_name) REFERENCES Treatment(Drug_name)
);

CREATE TABLE individual_insurance_plan(
    Patient_ID CHAR(12),
    Insurance_company_name VARCHAR(50),
    Insurance_plan VARCHAR(20),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Insurance_company_name) REFERENCES Insurance(Insurance_company_name),
    FOREIGN KEY (Insurance_plan) REFERENCES Insurance(Insurance_plan),
    PRIMARY KEY (Patient_ID,Insurance_company_name)
    );


CREATE TABLE patient_comorbitity(  -- creating a table for the different comorbitity a patient has
    Patient_ID CHAR(12),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    Comorbitity VARCHAR (70),
    Comorbitiy_patient_ID INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE insurance_therapy_coverage(
    Drug_name VARCHAR(50),
    Cost DECIMAL(10,2),
    FOREIGN KEY (Drug_name) REFERENCES Treatment(Drug_name),
    PRIMARY KEY (Drug_name),
    insurance_therapy_coverage FLOAT(5,2)

);



