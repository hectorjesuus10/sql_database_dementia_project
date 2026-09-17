
CREATE DATABASE DEMENTIA 
USE DEMENTIA;

CREATE TABLE State (
    State_name          VARCHAR(50) NOT NULL,
    Climate             ENUM('Tropical','Arid','Mediterranean','Humid Subtropical','Humid Continental','Subarctic','Highland','Polar') NOT NULL,
    Number_of_inhabitants BIGINT UNSIGNED NOT NULL,
    Number_of_hospitals   INT UNSIGNED NOT NULL,
    Male_to_female_ratio  DECIMAL(4,2) NOT NULL,
    GDP_per_person        DECIMAL(10,2) NOT NULL,
    Healthcare_funding    DECIMAL(15,2) NOT NULL,
    avg_dementia_rate     DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (State_name)
) ENGINE=InnoDB;

CREATE TABLE state_insurance (
    State_name              VARCHAR(50) NOT NULL,
    Insurance_company_name  VARCHAR(50) NOT NULL,
    PRIMARY KEY (State_name, Insurance_company_name),
    FOREIGN KEY (State_name) REFERENCES State(State_name)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Insurance_company_name) REFERENCES Insurance(Insurance_company_name)
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

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
) ENGINE=InnoDB;

CREATE TABLE Treatment (
    drug_name VARCHAR(50) PRIMARY KEY,
    cost DECIMAL(10,2),
    State VARCHAR(50),
    number_of_people_treated INT,
    FOREIGN KEY (State) REFERENCES State(state_name)

);

CREATE TABLE patient_treatment(
    drug_name VARCHAR(50),
    patient_ID CHAR(12),
    start_date DATE,
    end_date DATE,
    outcome VARCHAR(50),
    PRIMARY KEY (drug_name, patient_ID),
    FOREIGN KEY (drug_name) REFERENCES Treatment(drug_name),
    FOREIGN KEY (patient_ID) REFERENCES Patient(Patient_ID)

);

CREATE TABLE Insurance (
    Insurance_company_name VARCHAR(50) PRIMARY KEY,
    Insurance_plan VARCHAR(20) UNIQUE,
    Number_of_people_covered INT
);

CREATE TABLE GP (
    GP_ID VARCHAR(10) PRIMARY KEY,
    Price DECIMAL(10,2),
    State VARCHAR(50),
    FOREIGN KEY (State) REFERENCES State(State_name),
    Medical_practise_name VARCHAR(20),
    GP_name VARCHAR(20)

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
    Drug_name VARCHAR(50) -- Probably a proper data type?
    PRIMARY KEY (GP_ID, Drug_name),
    FOREIGN KEY (GP_ID) REFERENCES GP_ID(GP),
    FOREIGN KEY (Drug_name) REFERENCES Drug_name(Treatment)
);
CREATE TABLE Patient(
    Patient_ID CHAR(12) DEFAULT (UUID()) PRIMARY KEY,
    Age INT,
    Sex VARCHAR(6),
    Ethnicity VARCHAR(20),
    Diet VARCHAR (30),
    BMI FLOAT(4,2),
    Income FLOAT,
    Type_of_dementia VARCHAR(40),
    Level_of_highest_Education VARCHAR(40),
    Marital_status VARCHAR(20),
    FOREIGN KEY (Treatment) REFERENCES Treatment(Drug_name)
    FOREIGN KEY (State) REFERENCES State(State_name)


);

CREATE TABLE individual_insurance_plan(
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Insurance_company_name) REFERENCES Insurance(Insurance_company_name),
    FOREIGN KEY (Insurance_plan) REFERENCES Insurance(Insurance_plan),
    PRIMARY KEY (Patient_ID,Insurance_company_name)
    );


CREATE TABLE patient_comorbitity(
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    Comorbitity VARCHAR (70),
    Comorbitiy_patient_ID INT AUTO_INCREMENT PRIMARY KEY ,
);

CREATE TABLE insurance_therapy_coverage(
    FOREIGN key (Drug_name) REFERENCES Treatment(Drug_name),
    FOREIGN key (Cost) REFERENCES Treatment(cost),
    PRIMARY KEY (Drug_name),
    insurance_therapy_coverage FLOAT(5,2)

)

SELECT * FROM patients
Where Type_of_dementia = 'Vascular';

-----------------------------------------------------------------------------------
------- 3 Complex Queries ---------------------------------------------------------
-----------------------------------------------------------------------------------
SELECT *
FROM Patient
JOIN patient_treatment
    ON Patient.Patient_ID = patient_treatment.patient_ID
JOIN Treatment
    ON patient_treatment.Drug_name = Treatment.Drug_name
WHERE Patient.Type_of_dementia = 'Vascular'
  AND Treatment.Drug_name = 'Donezepil';


