INSERT INTO Treatment (drug_name, cost, number_of_people_treated) VALUES
('Donanemab', 1061.03, NULL),
('Lecanemab', 1288.89, 48),
('Benzgalantamine', NULL, NULL),
('Donepezil', 12.18, 1554251),
('Galantamine', 72.12, 23502),
('Rivastigmine', 178.74, 79469),
('Memantine', 29.65, 990408),
('Namzaric', 690.65, 18217),
('Brexpiprazole', 1439.27, 94695),
('Auvelity', 1054.69, 16448),
('Suvorexant', 476.16, 77098);


-- State

INSERT INTO State (State_name, Climate) VALUES
('Alabama', 'Humid Subtropical'),
('Alaska', 'Subarctic'),
('Arizona', 'Arid'),
('Arkansas', 'Humid Subtropical'),
('California', 'Mediterranean'),
('Colorado', 'Highland'),
('Connecticut', 'Humid Continental'),
('Delaware', 'Humid Subtropical'),
('Florida', 'Tropical'),
('Georgia', 'Humid Subtropical'),
('Hawaii', 'Tropical'),
('Idaho', 'Highland'),
('Illinois', 'Humid Continental'),
('Indiana', 'Humid Continental'),
('Iowa', 'Humid Continental'),
('Kansas', 'Humid Continental'),
('Kentucky', 'Humid Subtropical'),
('Louisiana', 'Humid Subtropical'),
('Maine', 'Humid Continental'),
('Maryland', 'Humid Subtropical'),
('Massachusetts', 'Humid Continental'),
('Michigan', 'Humid Continental'),
('Minnesota', 'Humid Continental'),
('Mississippi', 'Humid Subtropical'),
('Missouri', 'Humid Continental'),
('Montana', 'Highland'),
('Nebraska', 'Humid Continental'),
('Nevada', 'Arid'),
('New Hampshire', 'Humid Continental'),
('New Jersey', 'Humid Subtropical'),
('New Mexico', 'Arid'),
('New York', 'Humid Continental'),
('North Carolina', 'Humid Subtropical'),
('North Dakota', 'Humid Continental'),
('Ohio', 'Humid Continental'),
('Oklahoma', 'Humid Subtropical'),
('Oregon', 'Mediterranean'),
('Pennsylvania', 'Humid Continental'),
('Rhode Island', 'Humid Continental'),
('South Carolina', 'Humid Subtropical'),
('South Dakota', 'Humid Continental'),
('Tennessee', 'Humid Subtropical'),
('Texas', 'Humid Subtropical'),
('Utah', 'Arid'),
('Vermont', 'Humid Continental'),
('Virginia', 'Humid Subtropical'),
('Washington', 'Mediterranean'),
('West Virginia', 'Humid Continental'),
('Wisconsin', 'Humid Continental'),
('Wyoming', 'Highland');


-- treatments_available_in_states table (using drug_name)

-- We will use IGNORE as a keyword, because we have the composite key (treatment id, state name),
-- Given that our source dataset has duplicates ignore simply ignores them


-- Donanemab
INSERT IGNORE INTO treatments_available_in_states (drug_name, State_name) VALUES 
('Donanemab', 'Alabama'), ('Donanemab', 'Arizona'), ('Donanemab', 'California'), ('Donanemab', 'Colorado'), 
('Donanemab', 'Connecticut'), ('Donanemab', 'Florida'), ('Donanemab', 'Georgia'), ('Donanemab', 'Illinois'), 
('Donanemab', 'Indiana'), ('Donanemab', 'Maine'), ('Donanemab', 'Michigan'), ('Donanemab', 'Minnesota'), 
('Donanemab', 'Mississippi'), ('Donanemab', 'Missouri'), ('Donanemab', 'Nevada'), ('Donanemab', 'New York'), 
('Donanemab', 'North Carolina'), ('Donanemab', 'Ohio'), ('Donanemab', 'Oklahoma');

-- Lecanemab
INSERT IGNORE INTO treatments_available_in_states (drug_name, State_name) VALUES 
('Lecanemab', 'Arizona'), ('Lecanemab', 'Arkansas'), ('Lecanemab', 'Florida'), ('Lecanemab', 'Georgia'), 
('Lecanemab', 'Maine'), ('Lecanemab', 'Michigan'), ('Lecanemab', 'Minnesota'), ('Lecanemab', 'New York'), 
('Lecanemab', 'North Carolina');

-- Benzgalantamine (No states available)

-- Donepezil
INSERT IGNORE INTO treatments_available_in_states (drug_name, State_name) VALUES 
('Donepezil', 'Arizona'), ('Donepezil', 'Georgia'), ('Donepezil', 'Michigan'), ('Donepezil', 'Missouri'), 
('Donepezil', 'Nevada'), ('Donepezil', 'New York'), ('Donepezil', 'North Carolina'), ('Donepezil', 'Ohio');

-- Galantamine (No states available)

-- Rivastigmine
INSERT IGNORE INTO treatments_available_in_states (drug_name, State_name) VALUES 
('Rivastigmine', 'Arkansas'), ('Rivastigmine', 'Florida'), ('Rivastigmine', 'Louisiana'), ('Rivastigmine', 'Maine'), 
('Rivastigmine', 'Michigan'), ('Rivastigmine', 'Minnesota'), ('Rivastigmine', 'New Hampshire'), ('Rivastigmine', 'New York'), 
('Rivastigmine', 'North Carolina');

-- Memantine
INSERT IGNORE INTO treatments_available_in_states (drug_name, State_name) VALUES 
('Memantine', 'Arizona'), ('Memantine', 'Georgia'), ('Memantine', 'Michigan'), ('Memantine', 'Missouri'), 
('Memantine', 'Nevada'), ('Memantine', 'New York'), ('Memantine', 'North Carolina');

-- Namzaric
INSERT IGNORE INTO treatments_available_in_states (drug_name, State_name) VALUES 
('Namzaric', 'Arizona'), ('Namzaric', 'Georgia'), ('Namzaric', 'Michigan'), ('Namzaric', 'Missouri'), 
('Namzaric', 'Nevada'), ('Namzaric', 'New York'), ('Namzaric', 'North Carolina');

-- Brexpiprazole
INSERT IGNORE INTO treatments_available_in_states (drug_name, State_name) VALUES 
('Brexpiprazole', 'Alaska'), ('Brexpiprazole', 'Arizona'), ('Brexpiprazole', 'Arkansas'), ('Brexpiprazole', 'Florida'), 
('Brexpiprazole', 'Georgia'), ('Brexpiprazole', 'Idaho'), ('Brexpiprazole', 'Louisiana'), ('Brexpiprazole', 'Maine'), 
('Brexpiprazole', 'Michigan'), ('Brexpiprazole', 'Minnesota'), ('Brexpiprazole', 'Missouri'), ('Brexpiprazole', 'Nevada'), 
('Brexpiprazole', 'New Hampshire'), ('Brexpiprazole', 'New York'), ('Brexpiprazole', 'North Carolina');

-- Auvelity
INSERT IGNORE INTO treatments_available_in_states (drug_name, State_name) VALUES 
('Auvelity', 'Alabama'), ('Auvelity', 'Alaska'), ('Auvelity', 'Arizona'), ('Auvelity', 'Arkansas'), 
('Auvelity', 'California'), ('Auvelity', 'Colorado'), ('Auvelity', 'Connecticut'), ('Auvelity', 'Delaware'), 
('Auvelity', 'Florida'), ('Auvelity', 'Georgia'), ('Auvelity', 'Idaho'), ('Auvelity', 'Illinois'), 
('Auvelity', 'Indiana'), ('Auvelity', 'Iowa'), ('Auvelity', 'Kansas'), ('Auvelity', 'Kentucky'), 
('Auvelity', 'Louisiana'), ('Auvelity', 'Maine'), ('Auvelity', 'Michigan'), ('Auvelity', 'Minnesota'), 
('Auvelity', 'Mississippi'), ('Auvelity', 'Missouri'), ('Auvelity', 'Nebraska'), ('Auvelity', 'Nevada'), 
('Auvelity', 'New Hampshire'), ('Auvelity', 'New Jersey'), ('Auvelity', 'New York'), 
('Auvelity', 'North Carolina'), ('Auvelity', 'Ohio'), ('Auvelity', 'Oklahoma');

-- Suvorexant
INSERT IGNORE INTO treatments_available_in_states (drug_name, State_name) VALUES 
('Suvorexant', 'Alaska'), ('Suvorexant', 'Arizona'), ('Suvorexant', 'Arkansas'), ('Suvorexant', 'Florida'), 
('Suvorexant', 'Georgia'), ('Suvorexant', 'Idaho'), ('Suvorexant', 'Louisiana'), ('Suvorexant', 'Maine'), 
('Suvorexant', 'Michigan'), ('Suvorexant', 'Minnesota'), ('Suvorexant', 'Missouri'), ('Suvorexant', 'Nevada'), 
('Suvorexant', 'New Hampshire'), ('Suvorexant', 'New York'), ('Suvorexant', 'North Carolina');


-- patient info comorbidity
INSERT INTO Patient
    (Patient_ID, min_age, max_age, Sex)
VALUES
    (1, 76, 87, 'Female'),
    (2, 76, 87, 'Female'),
    (3, 76, 87, 'Male'),
    (4, 76, 87, 'Male'),
    (5, 76, 87, 'Female'),
    (6, 76, 87, 'Female'),
    (7, 76, 87, 'Male'),
    (8, 76, 87, 'Male'),
    (9, 76, 87, 'Female'),
    (10, 76, 87, 'Female'),
    (11, 76, 87, 'Male'),
    (12, 76, 87, 'Female'),
    (13, 76, 87, 'Female'),
    (14, 88, 99, NULL),
    (15, 88, 99, 'Male'),
    (16, 88, 99, 'Female'),
    (17, 76, 87, 'Female'),
    (18, 76, 87, 'Male'),
    (19, 76, 87, 'Female'),
    (20, 76, 87, 'Male'),
    (21, 72, 75, 'Female'),
    (22, 76, 87, 'Female'),
    (23, 76, 87, 'Male'),
    (24, 76, 87, 'Female'),
    (25, 76, 87, 'Female'),
    (26, 76, 87, 'Male'),
    (27, 88, 99, 'Female'),
    (28, 72, 75, 'Female'),
    (29, 72, 75, 'Male'),
    (30, 88, 99, 'Male'),
    (31, 76, 87, 'Female'),
    (32, 88, 99, 'Female'),
    (33, 72, 75, 'Female'),
    (34, 76, 87, 'Female'),
    (35, 76, 87, 'Female'),
    (36, NULL, NULL, 'Male'),
    (37, 72, 75, 'Female'),
    (38, 76, 87, 'Female'),
    (39, NULL, NULL, 'Male'),
    (40, 88, 99, 'Male'),
    (41, 88, 99, 'Female'),
    (42, 76, 87, 'Male'),
    (43, 72, 75, 'Female'),
    (44, 76, 87, 'Female'),
    (45, 76, 87, 'Male'),
    (46, 76, 87, 'Female'),
    (47, 88, 99, 'Male'),
    (48, 76, 87, 'Female'),
    (49, 76, 87, 'Male'),
    (50, 76, 87, 'Female'),
    (51, 72, 75, 'Female'),
    (52, 72, 75, 'Male'),
    (53, NULL, NULL, 'Male'),
    (54, 76, 87, 'Female'),
    (55, 76, 87, 'Female'),
    (56, 76, 87, 'Female'),
    (57, 76, 87, 'Male'),
    (58, 76, 87, 'Male'),
    (59, 72, 75, 'Female'),
    (60, 88, 99, 'Male'),
    (61, 88, 99, 'Female'),
    (62, 72, 75, 'Male'),
    (63, 88, 99, 'Female'),
    (64, 76, 87, 'Female'),
    (65, 76, 87, 'Male'),
    (66, 88, 99, 'Male'),
    (67, 76, 87, 'Female'),
    (68, 76, 87, 'Male'),
    (69, 72, 75, 'Female'),
    (70, 88, 99, 'Female'),
    (71, 76, 87, 'Female'),
    (72, 76, 87, 'Male'),
    (73, 76, 87, 'Male');


INSERT INTO patient_comorbidity
    (Patient_ID, Disease_name)
VALUES
    (1, 'Essential hypertension'),
    (2, 'Essential hypertension'),
    (2, 'Osteoarthritis'),
    (3, 'Essential hypertension'),
    (3, 'Osteoarthritis'),
    (4, 'Essential hypertension'),
    (4, 'Osteoarthritis'),
    (6, 'Essential hypertension'),
    (10, 'Essential hypertension'),
    (11, 'Essential hypertension'),
    (11, 'Osteoarthritis'),
    (12, 'Essential hypertension'),
    (13, 'Essential hypertension'),
    (13, 'Osteoarthritis'),
    (15, 'Essential hypertension'),
    (15, 'Osteoarthritis'),
    (17, 'Essential hypertension'),
    (17, 'Osteoarthritis'),
    (18, 'Essential hypertension'),
    (18, 'Osteoarthritis'),
    (22, 'Essential hypertension'),
    (23, 'Essential hypertension'),
    (23, 'Osteoarthritis'),
    (24, 'Essential hypertension'),
    (24, 'Osteoarthritis'),
    (25, 'Essential hypertension'),
    (25, 'Osteoarthritis'),
    (26, 'Essential hypertension'),
    (27, 'Osteoarthritis'),
    (28, 'Essential hypertension'),
    (28, 'Osteoarthritis'),
    (31, 'Essential hypertension'),
    (31, 'Osteoarthritis'),
    (32, 'Essential hypertension'),
    (33, 'Essential hypertension'),
    (35, 'Essential hypertension'),
    (38, 'Essential hypertension'),
    (40, 'Essential hypertension'),
    (41, 'Essential hypertension'),
    (41, 'Osteoarthritis'),
    (42, 'Essential hypertension'),
    (42, 'Osteoarthritis'),
    (47, 'Essential hypertension'),
    (48, 'Essential hypertension'),
    (49, 'Essential hypertension'),
    (49, 'Osteoarthritis'),
    (51, 'Essential hypertension'),
    (53, 'Essential hypertension'),
    (53, 'Osteoarthritis'),
    (54, 'Essential hypertension'),
    (55, 'Osteoarthritis'),
    (56, 'Essential hypertension'),
    (56, 'Osteoarthritis'),
    (58, 'Essential hypertension'),
    (58, 'Osteoarthritis'),
    (59, 'Osteoarthritis'),
    (60, 'Essential hypertension'),
    (61, 'Essential hypertension'),
    (61, 'Osteoarthritis'),
    (62, 'Essential hypertension'),
    (62, 'Osteoarthritis'),
    (63, 'Essential hypertension'),
    (63, 'Osteoarthritis'),
    (64, 'Osteoarthritis'),
    (65, 'Essential hypertension'),
    (65, 'Osteoarthritis'),
    (66, 'Essential hypertension'),
    (67, 'Essential hypertension'),
    (67, 'Osteoarthritis'),
    (68, 'Essential hypertension'),
    (70, 'Essential hypertension'),
    (71, 'Essential hypertension');



