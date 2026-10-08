-- This section is dedicated to the making of the additional queries requested by the last assignment

--In particular the very first query is used to handle 3NF in the relatin "Insurance_therapy_coverage"


-------------------------------------------------------------------------------------
-- Alessio's Queries
-------------------------------------------------------------------------------------

-- first query to get the drug name, its coverage percentage, and its cost without storing cost redundantly:
SELECT 
    itc.Drug_name,
    t.cost,
    itc.insurance_therapy_coverage_percentage,
    ROUND(t.cost * (1 - itc.insurance_therapy_coverage_percentage), 2) AS out_of_pocket_cost
FROM insurance_therapy_coverage itc
JOIN Treatment t ON itc.Drug_name = t.drug_name;

-- second query to find the top-performing GPs based on successful patient treatments
SELECT 
    g.GP_name, 
    g.Medical_practice_name,
    COUNT(pt.patient_ID) AS Total_Improved_Patients
FROM GP g
JOIN patients_treated_at_gp pg 
    ON g.GP_ID = pg.GP_ID
JOIN Patient_treatment pt 
    ON pg.Patient_ID = pt.patient_ID
WHERE pt.health_outcome = 'Improved'
GROUP BY g.GP_ID, g.GP_name, g.Medical_practice_name
HAVING COUNT(pt.patient_ID) >= 5
ORDER BY Total_Improved_Patients DESC;


-- Hector's Queries
-------------------------------------------------------------------------------------

-- first query to get the top 10 states with the highest number of dementia drugs available -- 
SELECT 
    s.State_name,
    COUNT(t.drug_name) AS num_dementia_drugs_available
FROM State s
JOIN treatments_available_in_states t ON s.State_name = t.State_name
GROUP BY s.State_name
ORDER BY num_dementia_drugs_available DESC
LIMIT 10;


-- second query to get the patients who have discontinued treatment and worsened health outcome --
SELECT 
    p.Patient_ID,
    p.min_age,
    p.max_age,
    pt.drug_name,
    pt.start_date,
    pt.end_date,
    pt.treatment_status,
    pt.health_outcome
FROM Patient_treatment pt
JOIN Patient p ON pt.patient_ID = p.Patient_ID
WHERE pt.treatment_status = 'Discontinued'
  AND pt.health_outcome = 'Worsened';
  
---------------------------------------------------------------------------------------------
-- Dhruva's Queries
---------------------------------------------------------------------------------------------

-- Question: Which insurance companies cover the largest number of people across all their plans?
-- Relevance: The largest insurers reach the most people, and thus need to be involved in sharing and accessing records.
SELECT
    i.Insurance_company_name,
    COUNT(*) AS number_of_plans,
    SUM(i.Number_of_people_covered) AS total_people_covered
FROM Insurance i
GROUP BY i.Insurance_company_name
ORDER BY total_people_covered DESC
LIMIT 5;


-- Question: How many plans and how many covered people are there in each plan tier?
-- Relevance: Dementia care can be expensive, and the tier of a plan can affect the costs incurred by the patient. 
-- Seeing how many people are in each tier can show hospitals/policy makers how many patients are exposed to high costs. 
SELECT
    SUBSTRING_INDEX(i.Insurance_plan, ' ', 1) AS plan_tier,
    COUNT(*) AS number_of_plans,
    SUM(i.Number_of_people_covered) AS total_people_covered,
    ROUND(AVG(i.Number_of_people_covered)) AS avg_people_per_plan
FROM Insurance i
GROUP BY plan_tier;

-----------------------------------------------------------------------------------------------------
-- Hanne's Queries ( I also wrote the first query in the doc 3complexqueries so it is duplicate here)
-- Query 1------
-- getting all the information on patients who are taking cognizol to treat their alzheimers as well as infomation on the status of their treatment
SELECT patient.*, patient_treatment.start_date,patient_treatment.end_date,patient_treatment.treatment_status,patient_treatment.health_outcome
FROM Patient
JOIN patient_treatment
    ON Patient.Patient_ID = patient_treatment.patient_ID
JOIN Treatment
    ON patient_treatment.Drug_name = Treatment.Drug_name
WHERE Patient.Type_of_dementia = 'Alzheimers'
  AND Treatment.Drug_name = 'Donepezil';
-- Query 2 
-- getting the total amount of patients who improved with a certain treatment and lived in a certain state

SELECT 
    COUNT(Patient.Patient_ID) AS total_patients, patient_treatment.drug_name, State.State_name
FROM Patient
JOIN patient_treatment
    ON Patient.Patient_ID = patient_treatment.patient_ID
JOIN State
    ON Patient.State = State.State_name
WHERE patient_treatment.health_outcome = 'Improved' 
GROUP BY patient_treatment.drug_name, State.State_name
ORDER BY total_patients DESC;
