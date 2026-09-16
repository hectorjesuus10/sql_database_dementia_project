CREATE DATABASE Dementia;
USE Dementia;
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
ALTER TABLE Insurance 
ADD PRIMARY KEY (Insurance_company_name);

ALTER TABLE GP
ADD PRIMARY KEY (GP_ID);

ALTER TABLE GP
RENAME COLUMN State TO State_name;

ALTER TABLE GP -- To be implemented due to missing State table!
ADD CONSTRAINT fk_gp_state
FOREIGN KEY (State_name)
REFERENCES State (State_name);

ALTER TABLE Insurance
ADD CONSTRAINT uq_insurance_plan UNIQUE (Insurance_plan);

DROP TABLE IF EXISTS GP_insurance;
 
CREATE TABLE GP_insurance (
    GP_ID VARCHAR(10),
    Insurance_plan VARCHAR(20),
    GP_insurance_coverage DECIMAL(5,2), -- It will represent a percentage of the price of a GP visit covered by the insurance (e.g., 80.00 = 80%)
    PRIMARY KEY (GP_ID, Insurance_plan),
    CONSTRAINT fk_gp_insurance_gp 
        FOREIGN KEY (GP_ID) REFERENCES GP(GP_ID),
    CONSTRAINT fk_gp_insurance_insurance 
        FOREIGN KEY (Insurance_plan) REFERENCES Insurance(Insurance_plan)
);

