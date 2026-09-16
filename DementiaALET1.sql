CREATE DATABASE DEMENTIA;
USE DEMENTIA;
CREATE TABLE Insurance (
    Insurance_company_name VARCHAR(50),
    Insurance_plan VARCHAR(20),
    Number_of_people_covered INT
);

CREATE TABLE GP (
    GP_ID VARCHAR(10),
    Price DECIMAL(10,2),
    State VARCHAR(20),
    Medical_practise_name VARCHAR(20),
    GP_name VARCHAR(20)

);
SELECT * FROM GP;

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

SELECT * FROM patients
Where Type_of_dementia = 'Vascular';

FROM Patient
JOIN patient_treatment
    ON Patient.Patient_ID = patient_treatment.patient_ID
JOIN Treatment
    ON patient_treatment.Drug_name = Treatment.Drug_name
WHERE Patient.Type_of_dementia = 'Vascular'
  AND Treatment.Drug_name = 'Donezepil';