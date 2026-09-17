
DROP DATABASE IF EXISTS DEMENTIA;
CREATE DATABASE DEMENTIA;
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
    Treatment VARCHAR(50),
    State VARCHAR(50),
    FOREIGN KEY (Treatment) REFERENCES Treatment(Drug_name),
    FOREIGN KEY (State) REFERENCES State(State_name)


);

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

CREATE TABLE Patient_treatment(
    drug_name VARCHAR(50),
    patient_ID CHAR(12),
    start_date DATE,
    end_date DATE,
    outcome VARCHAR(50),
    PRIMARY KEY (drug_name, patient_ID),
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


CREATE TABLE patient_comorbitity(
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

-----------------------------------------------------------------------------------
------- Mock Data -------------------------------------------------------------------
-----------------------------------------------------------------------------------

INSERT INTO State (State_name, Climate, Number_of_inhabitants, Number_of_hospitals, Male_to_female_ratio, GDP_per_person, Healthcare_funding, avg_dementia_rate) VALUES
('California', 'Mediterranean', 39000000, 450, 0.98, 75000.00, 25000000000.00, 6.50),
('Texas', 'Humid Subtropical', 30000000, 400, 1.02, 65000.00, 18000000000.00, 5.80),
('New York', 'Humid Continental', 20000000, 300, 0.95, 82000.00, 21000000000.00, 7.10);

INSERT INTO Insurance (Insurance_company_name, Insurance_plan, Number_of_people_covered) VALUES
('BlueCross', 'Basic', 500000),
('Aetna', 'Premium', 350000),
('UnitedHealth', 'Standard', 620000);

INSERT INTO Treatment (drug_name, cost, State, number_of_people_treated) VALUES
('Donezepil', 120.50, 'California', 15000),
('Memantine', 95.00, 'Texas', 9800),
('Rivastigmine', 110.75, 'New York', 7600);

INSERT INTO GP (GP_ID, Price, State, Medical_practise_name, GP_name) VALUES
('GP001', 85.00, 'California', 'Sunrise Clinic', 'Dr. Smith'),
('GP002', 90.00, 'Texas', 'Lonestar Health', 'Dr. Johnson'),
('GP003', 78.50, 'New York', 'Empire Care', 'Dr. Lee');

INSERT INTO Patient (Patient_ID, Age, Sex, Ethnicity, Diet, BMI, Income, Type_of_dementia, Level_of_highest_Education, Marital_status, Treatment, State) VALUES
('PAT000000001', 72, 'Female', 'Caucasian', 'Mediterranean', 24.50, 45000, 'Alzheimer', 'Bachelor', 'Married', 'Donezepil', 'California'),
('PAT000000002', 68, 'Male', 'Hispanic', 'Balanced', 27.30, 38000, 'Vascular', 'High School', 'Widowed', 'Memantine', 'Texas'),
('PAT000000003', 80, 'Female', 'African American', 'Low-fat', 22.10, 30000, 'Vascular', 'Master', 'Single', 'Rivastigmine', 'New York');

INSERT INTO state_insurance (State_name, Insurance_company_name) VALUES
('California', 'BlueCross'),
('Texas', 'Aetna'),
('New York', 'UnitedHealth');

INSERT INTO treatments_available_in_states (Therapy, State_name) VALUES
('Donezepil', 'California'),
('Memantine', 'Texas'),
('Rivastigmine', 'New York');

INSERT INTO Patient_treatment (drug_name, patient_ID, start_date, end_date, outcome) VALUES
('Donezepil', 'PAT000000001', '2024-01-10', '2024-06-10', 'Improved'),
('Memantine', 'PAT000000002', '2024-02-15', NULL, 'Ongoing'),
('Rivastigmine', 'PAT000000003', '2023-11-01', '2024-05-01', 'Stable');

INSERT INTO GP_insurance (GP_ID, Insurance_plan, GP_insurance_coverage) VALUES
('GP001', 'Basic', 80.00),
('GP002', 'Premium', 90.00),
('GP003', 'Standard', 75.00);

INSERT INTO patients_treated_at_gp (Patient_ID, GP_name) VALUES
('PAT000000001', 'Dr. Smith'),
('PAT000000002', 'Dr. Johnson'),
('PAT000000003', 'Dr. Lee');

INSERT INTO GP_treatment (GP_ID, Drug_name) VALUES
('GP001', 'Donezepil'),
('GP002', 'Memantine'),
('GP003', 'Rivastigmine');

INSERT INTO individual_insurance_plan (Patient_ID, Insurance_company_name, Insurance_plan) VALUES
('PAT000000001', 'BlueCross', 'Basic'),
('PAT000000002', 'Aetna', 'Premium'),
('PAT000000003', 'UnitedHealth', 'Standard');

INSERT INTO patient_comorbitity (Patient_ID, Comorbitity) VALUES
('PAT000000001', 'Hypertension'),
('PAT000000002', 'Diabetes'),
('PAT000000003', 'Depression');

INSERT INTO insurance_therapy_coverage (Drug_name, Cost, insurance_therapy_coverage) VALUES
('Donezepil', 120.50, 70.00),
('Memantine', 95.00, 65.00),
('Rivastigmine', 110.75, 60.00);

SELECT * FROM Patient
WHERE Type_of_dementia = 'Vascular';

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


