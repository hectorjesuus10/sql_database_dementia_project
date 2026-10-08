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



