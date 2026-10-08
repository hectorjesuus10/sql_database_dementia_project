-------------------------------------------------------------------------------------
--  three Complex Queries -----------------------------------------------------------
-------------------------------------------------------------------------------------




-----------------------------------------------------------------
-- PLEASE DO RUN THE QUERIES AFTER POPULATING THE MOCK DATA!!!!--
-----------------------------------------------------------------





-- Query 1------
-- getting all the information on patients who are taking Donepezil to treat their alzheimers as well as infomation on the status of their treatment
SELECT patient.*, patient_treatment.start_date,patient_treatment.end_date,patient_treatment.treatment_status,patient_treatment.health_outcome
FROM Patient
JOIN patient_treatment
    ON Patient.Patient_ID = patient_treatment.patient_ID
JOIN Treatment
    ON patient_treatment.Drug_name = Treatment.Drug_name
WHERE Patient.Type_of_dementia = 'Alzheimers'
  AND Treatment.Drug_name = 'Donepezil';
  


-- Query 2------
-- finding the states that have more than 300 hospitals and more than 700000 inhabitants and their exxact numbers
SELECT s.State_name, y.Stats_year, y.Number_of_inhabitants, y.Number_of_hospitals
FROM State s
JOIN State_year_stats y ON y.State_name = s.State_name
WHERE y.Stats_year = 2010
  AND y.Number_of_hospitals >= 300
  AND y.Number_of_inhabitants>= 70000.00;


-- Query 3-------
--finding which patients have Essential hypertension next to their dementia
SELECT DISTINCT `Patient_ID`
FROM `Patient`
WHERE `Patient_ID` NOT IN
    (SELECT `Patient_ID` FROM patient_Comorbidity
     WHERE `Disease_name` = 'Essential hypertension'); 

