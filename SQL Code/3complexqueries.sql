-------------------------------------------------------------------------------------
--  three Complex Queries -----------------------------------------------------------
-------------------------------------------------------------------------------------




-----------------------------------------------------------------
-- PLEASE DO RUN THE QUERIES AFTER POPULATING THE MOCK DATA!!!!--
-----------------------------------------------------------------




-- Query 1------
-- getting all the information on patients who are taking cognizol to treat their alzheimers
SELECT *
FROM Patient
JOIN patient_treatment
    ON Patient.Patient_ID = patient_treatment.patient_ID
JOIN Treatment
    ON patient_treatment.Drug_name = Treatment.Drug_name
WHERE Patient.Type_of_dementia = 'Alzheimers'
  AND Treatment.Drug_name LIKE 'Namzaric'; 



-- Query 2------
SELECT s.State_name, y.Stats_year, y.Number_of_inhabitants, y.Number_of_hospitals
FROM State s
JOIN State_year_stats y ON y.State_name = s.State_name
WHERE y.Stats_year = 2010
  AND y.Number_of_hospitals >= 300
  AND y.Number_of_inhabitants>= 70000.00;


-- Query 3-------
SELECT DISTINCT `Patient_ID`
FROM `Patient`
WHERE `Patient_ID` NOT IN
    (SELECT `Patient_ID` FROM patient_Comorbidity
     WHERE `Disease_name` = 'Essential hypertension'); 

