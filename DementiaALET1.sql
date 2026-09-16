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


