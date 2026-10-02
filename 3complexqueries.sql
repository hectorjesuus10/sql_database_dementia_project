-------------------------------------------------------------------------------------
--  three Complex Queries -----------------------------------------------------------
-------------------------------------------------------------------------------------




-----------------------------------------------------------------
-- PLEASE DO RUN THE QUERIES AFTER POPULATING THE MOCK DATA!!!!--
-----------------------------------------------------------------




-- Query 1------
SELECT *
FROM Patient
JOIN patient_treatment
    ON Patient.Patient_ID = patient_treatment.patient_ID
JOIN Treatment
    ON patient_treatment.Drug_name = Treatment.Drug_name
WHERE Patient.Type_of_dementia = 'Alzheimer'
  AND Treatment.Drug_name LIKE 'Cognizol'; 



-- Query 2------
SELECT s.State_name, y.Stats_year, y.Number_of_inhabitants, y.GDP_per_person
FROM State s
JOIN State_year_stats y ON y.State_name = s.State_name
WHERE y.Stats_year = 2024
  AND y.Number_of_inhabitants >= 2000000
  AND y.GDP_per_person >= 70000.00;


-- Query 3-------
SELECT DISTINCT `Patient_ID`
FROM `Patient`
WHERE `Patient_ID` NOT IN
    (SELECT `Patient_ID` FROM patient_Comorbidity
     WHERE `Comorbidity` = 'Diabetes'); 