DROP DATABASE IF EXISTS DEMENTIA;
CREATE DATABASE DEMENTIA;
USE DEMENTIA;

CREATE TABLE State (
    State_name VARCHAR(50) PRIMARY KEY,
    Climate ENUM('Tropical','Arid','Mediterranean','Humid Subtropical','Humid Continental','Subarctic','Highland','Polar'), 
    Number_of_inhabitants BIGINT,
    Number_of_hospitals INT,
    Male_to_female_ratio DECIMAL(4,2),
    GDP_per_person DECIMAL(10,2),
    Healthcare_funding DECIMAL(15,2),
    avg_dementia_rate DECIMAL(5,2)
);


CREATE TABLE Insurance (
    Insurance_company_name VARCHAR(50),
    Insurance_plan VARCHAR(50), 
    Number_of_people_covered INT,
    PRIMARY KEY(Insurance_company_name,Insurance_plan)
);

CREATE TABLE Treatment (
    Treatment_id INT AUTO_INCREMENT PRIMARY KEY,
    drug_name VARCHAR(50) UNIQUE,
    cost DECIMAL(10,2),
    number_of_people_treated INT
);

CREATE TABLE GP (
    GP_ID VARCHAR(10) PRIMARY KEY, 
    Price DECIMAL(10,2),
    State VARCHAR(50),
    FOREIGN KEY (State) REFERENCES State(State_name),
    Medical_practise_name VARCHAR(20),
    GP_name VARCHAR(100) UNIQUE 

);

CREATE TABLE Patient(
    Patient_ID INT AUTO_INCREMENT PRIMARY KEY,  
    Age INT NOT NULL,
    Sex ENUM('Male','Female','Other') NOT NULL,
    Ethnicity VARCHAR(20) NOT NULL,
    Diet VARCHAR (30),
    BMI FLOAT(4,2) NOT NULL,
    Income FLOAT,
    Type_of_dementia VARCHAR(40) NOT NULL ,
    Level_of_highest_Education VARCHAR(40) NOT NULL,
    Marital_status ENUM ('Single','Married','Divorced', 'In a relationship','Other'),
    Treatment VARCHAR(50) DEFAULT('No treatment'),
    State VARCHAR(50) NOT NULL,
    FOREIGN KEY (State) REFERENCES State(State_name)  ON DELETE CASCADE ON UPDATE CASCADE


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
    state_treatment_ID INT AUTO_INCREMENT,
    Therapy VARCHAR(50) NOT NULL,
    State_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (state_treatment_ID),
    UNIQUE (Therapy, State_name),
    FOREIGN KEY (Therapy) REFERENCES Treatment(Drug_name)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (State_name) REFERENCES State(State_name)
        ON DELETE CASCADE ON UPDATE CASCADE
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
    GP_ID VARCHAR(10),
    Drug_name VARCHAR(50),
    PRIMARY KEY (GP_ID, Drug_name),
    FOREIGN KEY (GP_ID) REFERENCES GP(GP_ID),
    FOREIGN KEY (Drug_name) REFERENCES Treatment(Drug_name)
);

CREATE TABLE individual_insurance_plan (
    Patient_ID INT,
    Insurance_company_name VARCHAR(50),
    Insurance_plan VARCHAR(50),
    PRIMARY KEY (Patient_ID, Insurance_company_name, Insurance_plan),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Insurance_company_name, Insurance_plan) REFERENCES Insurance(Insurance_company_name, Insurance_plan)
);


CREATE TABLE patient_comorbidity (
    Patient_ID INT,
    Disease_name VARCHAR(70),
    Comorbidity_patient_ID INT AUTO_INCREMENT PRIMARY KEY,
    
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)  ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE insurance_therapy_coverage(
    Drug_name VARCHAR(50),
    cost DECIMAL(10,2),
    FOREIGN KEY (Drug_name) REFERENCES Treatment(Drug_name),
    FOREIGN KEY (cost) REFERENCES Treatment(cost)  ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (Drug_name),
    insurance_therapy_coverage_percentage FLOAT(3,2)

);





