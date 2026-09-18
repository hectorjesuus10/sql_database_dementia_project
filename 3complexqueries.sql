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




-- Query 2-------
SELECT *
FROM `State`
WHERE `Number_of_inhabitants` >= 2000000 AND `GDP_per_person` >= 70000.00; 

-- Query 3-------
SELECT DISTINCT `Patient_ID`
FROM `Patient`
WHERE `Patient_ID` NOT IN
    (SELECT `Patient_ID` FROM patient_Comorbidity
     WHERE `Comorbidity` = 'Diabetes'); 