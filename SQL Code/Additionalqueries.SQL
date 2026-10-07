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