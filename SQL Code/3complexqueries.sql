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

-- Query 4 -- Written by Hanne
-- ordering the amount of patients in a state with a successfull outcome by the drug they are taking.

SELECT 
    COUNT(Patient.Patient_ID) AS total_patients, patient_treatment.drug_name, State_year_stats.State_name
FROM Patient
JOIN patient_treatment
    ON Patient.Patient_ID = patient_treatment.patient_ID
JOIN State_year_stats
    ON Patient.State = State_year_stats.State_name
WHERE patient_treatment.health_outcome = 'Improved' AND State_year_stats.Stats_year = 2020
GROUP BY patient_treatment.drug_name, State_year_stats.State_name
ORDER BY total_patients DESC;