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


-- treatments_available_in_states table (using drug_name)

-- We will use IGNORE as a keyword, because we have the composite key (treatment id, state name),
-- So if any duplicate happen from the original database found SQL will ignore them


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