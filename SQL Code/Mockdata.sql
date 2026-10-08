

-- Realistic mock data for the tables that we couldn't find real data and additional mock patient data to not have mock data and real data intertwined --

INSERT INTO Patient
(Patient_ID, avg_age, Sex, Ethnicity, Diet, BMI, Income,
 Type_of_dementia, Level_of_highest_Education, Marital_status, State)
VALUES
(80, 72, 'Female', 'White', 'Mediterranean', 24.8, 68400, 'Alzheimers', 'Bachelors', 'Married', 'California'),
(81, 68, 'Male', 'Black', 'Low-sodium', 27.3, 51200, 'Vascular dementia', 'High School', 'Married', 'Texas'),
(82, 75, 'Female', 'Hispanic', 'Mediterranean', 26.1, 47300, 'Alzheimers', 'Associates', 'Widowed', 'Florida'),
(83, 70, 'Male', 'White', 'Balanced', 23.9, 72800, 'Alzheimers', 'Masters', 'Married', 'New York'),
(84, 77, 'Female', 'Asian', 'Low-sodium', 25.7, 81500, 'Lewy body dementia', 'Bachelors', 'Widowed', 'Washington'),
(85, 66, 'Male', 'White', 'Mediterranean', 28.4, 59200, 'Alzheimers', 'High School', 'Married', 'Colorado'),
(86, 73, 'Female', 'Black', 'Balanced', 30.1, 43800, 'Vascular dementia', 'High School', 'Divorced', 'Georgia'),
(87, 81, 'Male', 'White', 'Low-carb', 26.8, 64100, 'Alzheimers', 'Bachelors', 'Widowed', 'Ohio'),
(88, 69, 'Female', 'Hispanic', 'Mediterranean', 24.2, 55600, 'Frontotemporal dementia', 'Masters', 'Married', 'Arizona'),
(89, 74, 'Male', 'Asian', 'Balanced', 22.7, 92300, 'Alzheimers', 'Doctorate', 'Married', 'New Jersey'),
(90, 71, 'Female', 'White', 'Low-sodium', 29.4, 48900, 'Alzheimers', 'High School', 'Widowed', 'Pennsylvania'),
(91, 79, 'Male', 'Black', 'Balanced', 31.2, 39700, 'Vascular dementia', 'High School', 'Married', 'Michigan'),
(92, 67, 'Female', 'White', 'Mediterranean', 23.6, 74500, 'Alzheimers', 'Bachelors', 'Married', 'Massachusetts'),
(93, 83, 'Male', 'Hispanic', 'Low-sodium', 27.9, 42100, 'Lewy body dementia', 'High School', 'Widowed', 'New Mexico'),
(94, 76, 'Female', 'Asian', 'Balanced', 25.3, 88700, 'Alzheimers', 'Masters', 'Married', 'Hawaii'),
(95, 70, 'Male', 'White', 'Mediterranean', 24.9, 63800, 'Alzheimers', 'Bachelors', 'Divorced', 'Virginia'),
(96, 78, 'Female', 'Black', 'Low-carb', 32.1, 46200, 'Vascular dementia', 'High School', 'Widowed', 'North Carolina'),
(97, 65, 'Male', 'White', 'Balanced', 26.4, 78400, 'Alzheimers', 'Masters', 'Married', 'Minnesota'),
(98, 73, 'Female', 'Hispanic', 'Mediterranean', 28.7, 51900, 'Frontotemporal dementia', 'Bachelors', 'Married', 'Nevada'),
(99, 80, 'Male', 'White', 'Low-sodium', 25.8, 58300, 'Alzheimers', 'Associates', 'Widowed', 'Oregon'),
(100, 72, 'Female', 'Asian', 'Mediterranean', 23.5, 96400, 'Alzheimers', 'Doctorate', 'Married', 'California'),
(101, 69, 'Male', 'Black', 'Balanced', 29.6, 48700, 'Vascular dementia', 'Bachelors', 'Married', 'Illinois'),
(102, 77, 'Female', 'White', 'Low-sodium', 27.2, 62100, 'Alzheimers', 'High School', 'Widowed', 'Missouri'),
(103, 84, 'Male', 'Hispanic', 'Balanced', 30.4, 36500, 'Lewy body dementia', 'High School', 'Widowed', 'Texas'),
(104, 71, 'Female', 'White', 'Mediterranean', 24.7, 71300, 'Alzheimers', 'Bachelors', 'Married', 'Connecticut'),
(105, 68, 'Male', 'Asian', 'Low-sodium', 22.9, 84200, 'Alzheimers', 'Masters', 'Married', 'New York'),
(106, 75, 'Female', 'Black', 'Balanced', 31.5, 44900, 'Vascular dementia', 'High School', 'Divorced', 'Alabama'),
(107, 79, 'Male', 'White', 'Mediterranean', 26.7, 67500, 'Alzheimers', 'Bachelors', 'Married', 'Wisconsin'),
(108, 73, 'Female', 'Hispanic', 'Low-carb', 29.1, 50300, 'Alzheimers', 'Associates', 'Widowed', 'Arizona'),
(109, 66, 'Male', 'White', 'Balanced', 24.4, 76800, 'Frontotemporal dementia', 'Masters', 'Married', 'Colorado'),

(110, 82, 'Female', 'Black', 'Low-sodium', 33.2, 38200, 'Vascular dementia', 'High School', 'Widowed', 'Mississippi'),
(111, 70, 'Male', 'White', 'Mediterranean', 25.6, 69700, 'Alzheimers', 'Bachelors', 'Married', 'Ohio'),
(112, 76, 'Female', 'Asian', 'Balanced', 23.8, 91500, 'Alzheimers', 'Masters', 'Married', 'California'),
(113, 74, 'Male', 'Hispanic', 'Low-sodium', 28.3, 52700, 'Lewy body dementia', 'Bachelors', 'Divorced', 'Florida'),
(114, 81, 'Female', 'White', 'Mediterranean', 26.5, 58900, 'Alzheimers', 'High School', 'Widowed', 'Pennsylvania'),
(115, 69, 'Male', 'Black', 'Balanced', 30.7, 46100, 'Vascular dementia', 'High School', 'Married', 'Georgia'),
(116, 72, 'Female', 'White', 'Low-carb', 27.8, 63400, 'Alzheimers', 'Bachelors', 'Married', 'Virginia'),
(117, 78, 'Male', 'Asian', 'Mediterranean', 24.1, 87300, 'Alzheimers', 'Masters', 'Married', 'Washington'),
(118, 67, 'Female', 'Hispanic', 'Balanced', 29.8, 49500, 'Frontotemporal dementia', 'Associates', 'Divorced', 'New Mexico'),
(119, 85, 'Male', 'White', 'Low-sodium', 27.4, 41800, 'Alzheimers', 'High School', 'Widowed', 'Maine'),
(120, 71, 'Female', 'Black', 'Mediterranean', 25.2, 53600, 'Vascular dementia', 'Bachelors', 'Married', 'Maryland'),
(121, 77, 'Male', 'White', 'Balanced', 28.9, 72100, 'Alzheimers', 'Masters', 'Married', 'Tennessee'),
(122, 73, 'Female', 'Asian', 'Low-sodium', 23.7, 89200, 'Alzheimers', 'Doctorate', 'Married', 'California'),
(123, 80, 'Male', 'Hispanic', 'Mediterranean', 31.1, 45300, 'Lewy body dementia', 'High School', 'Widowed', 'Texas'),
(124, 68, 'Female', 'White', 'Balanced', 26.3, 67800, 'Alzheimers', 'Bachelors', 'Married', 'Utah'),
(125, 75, 'Male', 'Black', 'Low-sodium', 30.5, 41700, 'Vascular dementia', 'High School', 'Divorced', 'Louisiana'),
(126, 79, 'Female', 'White', 'Mediterranean', 24.6, 75600, 'Alzheimers', 'Masters', 'Widowed', 'New Jersey'),
(127, 82, 'Male', 'Hispanic', 'Balanced', 28.2, 48200, 'Alzheimers', 'Associates', 'Married', 'Nevada'),
(128, 70, 'Female', 'Asian', 'Low-sodium', 22.8, 104500, 'Alzheimers', 'Doctorate', 'Married', 'California'),
(129, 74, 'Male', 'White', 'Mediterranean', 27.6, 61200, 'Frontotemporal dementia', 'Bachelors', 'Married', 'Oregon'),
(130, 83, 'Female', 'Black', 'Low-sodium', 32.8, 39100, 'Vascular dementia', 'High School', 'Widowed', 'South Carolina'),
(131, 69, 'Male', 'White', 'Balanced', 25.4, 73400, 'Alzheimers', 'Masters', 'Married', 'Minnesota'),
(132, 76, 'Female', 'Hispanic', 'Mediterranean', 29.3, 54800, 'Alzheimers', 'Bachelors', 'Widowed', 'Florida'),
(133, 72, 'Male', 'Asian', 'Low-sodium', 23.1, 94700, 'Lewy body dementia', 'Masters', 'Married', 'Hawaii'),
(134, 78, 'Female', 'White', 'Balanced', 26.9, 65900, 'Alzheimers', 'Bachelors', 'Married', 'Colorado'),
(135, 67, 'Male', 'Black', 'Low-carb', 31.7, 42800, 'Vascular dementia', 'High School', 'Divorced', 'Alabama'),
(136, 81, 'Female', 'White', 'Mediterranean', 24.3, 78300, 'Alzheimers', 'Masters', 'Widowed', 'New York'),
(137, 73, 'Male', 'Hispanic', 'Balanced', 28.5, 51700, 'Alzheimers', 'Bachelors', 'Married', 'Arizona'),
(138, 70, 'Female', 'Asian', 'Low-sodium', 22.4, 98500, 'Alzheimers', 'Doctorate', 'Married', 'Washington'),
(139, 84, 'Male', 'White', 'Mediterranean', 30.8, 43900, 'Lewy body dementia', 'High School', 'Widowed', 'Ohio'),
(140, 75, 'Female', 'Black', 'Balanced', 29.7, 47100, 'Vascular dementia', 'Associates', 'Married', 'Georgia'),
(141, 79, 'Male', 'White', 'Low-sodium', 27.1, 62300, 'Alzheimers', 'Bachelors', 'Married', 'Michigan'),
(142, 68, 'Female', 'Hispanic', 'Mediterranean', 25.5, 58100, 'Alzheimers', 'Bachelors', 'Divorced', 'Texas'),
(143, 82, 'Male', 'Asian', 'Balanced', 24.0, 87100, 'Alzheimers', 'Masters', 'Widowed', 'California'),
(144, 71, 'Female', 'White', 'Low-carb', 30.2, 51700, 'Frontotemporal dementia', 'High School', 'Married', 'North Carolina'),
(145, 77, 'Male', 'Black', 'Mediterranean', 26.6, 48600, 'Vascular dementia', 'High School', 'Widowed', 'Missouri'),
(146, 73, 'Female', 'White', 'Balanced', 23.4, 79500, 'Alzheimers', 'Masters', 'Married', 'Massachusetts'),
(147, 80, 'Male', 'Hispanic', 'Low-sodium', 29.9, 45300, 'Alzheimers', 'Associates', 'Widowed', 'Florida'),
(148, 69, 'Female', 'Asian', 'Mediterranean', 21.9, 102300, 'Alzheimers', 'Doctorate', 'Married', 'California'),
(149, 85, 'Male', 'White', 'Balanced', 28.7, 39800, 'Lewy body dementia', 'High School', 'Widowed', 'Pennsylvania'),
(150, 74, 'Female', 'Black', 'Low-sodium', 31.4, 46200, 'Vascular dementia', 'High School', 'Divorced', 'Tennessee'),
(151, 78, 'Male', 'White', 'Mediterranean', 25.8, 68700, 'Alzheimers', 'Bachelors', 'Married', 'Virginia'),
(152, 72, 'Female', 'Hispanic', 'Balanced', 27.3, 57400, 'Alzheimers', 'Bachelors', 'Married', 'New Mexico');

INSERT INTO Patient_treatment
(drug_name, patient_ID, start_date, end_date, treatment_status, health_outcome) VALUES
('Namzaric', 80, '2022-05-27', '2022-11-18', 'Discontinued', 'Worsened'),
('Memantine', 81, '2024-08-04', NULL, 'Ongoing', NULL),
('Galantamine', 82, '2023-03-26', '2023-05-22', 'Discontinued', 'Stable'),
('Donepezil', 83, '2023-10-09', NULL, 'Ongoing', 'Improved'),
('Suvorexant', 84, '2023-10-07', NULL, 'Ongoing', 'Stable'),
('Suvorexant', 85, '2024-07-28', NULL, 'Ongoing', 'Improved'),
('Namzaric', 86, '2023-06-23', '2024-09-03', 'Discontinued', 'Worsened'),
('Memantine', 87, '2023-03-26', '2023-08-14', 'Discontinued', 'Worsened'),
('Donepezil', 88, '2022-04-07', '2022-09-10', 'Discontinued', 'Worsened'),
('Brexpiprazole', 89, '2024-05-14', NULL, 'Ongoing', 'Stable'),
('Galantamine', 90, '2024-08-16', NULL, 'Ongoing', NULL),
('Auvelity', 91, '2022-01-24', '2022-09-15', 'Discontinued', 'Worsened'),
('Rivastigmine', 92, '2023-07-01', '2024-06-13', 'Discontinued', 'Improved'),
('Memantine', 93, '2024-07-18', NULL, 'Ongoing', 'Stable'),
('Namzaric', 94, '2024-10-22', '2024-12-25', 'Discontinued', 'Worsened'),
('Auvelity', 95, '2023-09-04', '2024-05-20', 'Discontinued', 'Worsened'),
('Donepezil', 96, '2022-11-27', NULL, 'Ongoing', 'Stable'),
('Rivastigmine', 97, '2022-01-02', NULL, 'Ongoing', 'Stable'),
('Donepezil', 98, '2024-01-14', '2024-06-19', 'Discontinued', 'Stable'),
('Donepezil', 99, '2022-06-11', NULL, 'Ongoing', 'Stable'),
('Donepezil', 100, '2024-12-26', '2024-12-27', 'Discontinued', 'Worsened'),
('Lecanemab', 101, '2022-12-05', NULL, 'Ongoing', 'Worsened'),
('Memantine', 102, '2023-03-10', '2023-10-01', 'Discontinued', 'Worsened'),
('Memantine', 103, '2024-02-04', NULL, 'Ongoing', 'Stable'),
('Donepezil', 104, '2023-04-06', NULL, 'Ongoing', 'Improved'),
('Rivastigmine', 105, '2023-03-28', NULL, 'Ongoing', 'Stable'),
('Donepezil', 106, '2022-05-19', '2024-10-15', 'Discontinued', 'Stable'),
('Rivastigmine', 107, '2023-07-25', '2024-02-29', 'Discontinued', 'Worsened'),
('Namzaric', 108, '2024-08-26', NULL, 'Ongoing', 'Stable'),
('Memantine', 109, '2022-07-13', NULL, 'Ongoing', 'Stable'),
('Memantine', 110, '2024-08-14', '2024-08-27', 'Discontinued', 'Worsened'),
('Donanemab', 111, '2022-07-21', NULL, 'Ongoing', 'Stable'),
('Brexpiprazole', 112, '2022-08-12', NULL, 'Ongoing', 'Improved'),
('Memantine', 113, '2024-05-14', NULL, 'Ongoing', 'Stable'),
('Auvelity', 114, '2022-06-04', NULL, 'Ongoing', 'Worsened'),
('Rivastigmine', 115, '2022-04-14', '2023-10-19', 'Discontinued', 'Worsened'),
('Lecanemab', 116, '2023-04-30', NULL, 'Ongoing', 'Stable'),
('Donepezil', 117, '2024-04-01', '2024-06-24', 'Discontinued', 'Stable'),
('Donanemab', 118, '2023-06-28', '2024-10-05', 'Discontinued', 'Stable'),
('Namzaric', 119, '2024-09-23', NULL, 'Ongoing', 'Improved'),
('Lecanemab', 120, '2022-05-05', '2022-07-02', 'Discontinued', 'Improved'),
('Rivastigmine', 121, '2024-12-23', NULL, 'Ongoing', NULL),
('Donepezil', 122, '2023-01-16', NULL, 'Ongoing', 'Improved'),
('Auvelity', 123, '2024-04-06', NULL, 'Ongoing', 'Worsened'),
('Memantine', 124, '2022-03-23', '2023-05-26', 'Discontinued', 'Worsened'),
('Rivastigmine', 125, '2023-10-10', '2024-01-22', 'Discontinued', 'Worsened'),
('Memantine', 126, '2023-06-28', NULL, 'Ongoing', 'Stable'),
('Memantine', 127, '2023-10-10', '2023-11-16', 'Discontinued', 'Improved'),
('Galantamine', 128, '2022-07-24', NULL, 'Ongoing', 'Improved'),
('Memantine', 129, '2023-12-16', '2024-04-19', 'Discontinued', 'Stable'),
('Donepezil', 130, '2023-09-12', '2024-10-29', 'Discontinued', 'Worsened'),
('Donepezil', 131, '2023-09-06', '2023-10-29', 'Discontinued', 'Worsened'),
('Donepezil', 132, '2022-08-25', '2024-09-23', 'Discontinued', 'Worsened'),
('Memantine', 133, '2023-03-08', '2023-10-02', 'Discontinued', 'Worsened'),
('Auvelity', 134, '2024-11-01', NULL, 'Ongoing', NULL),
('Auvelity', 135, '2022-07-09', '2024-11-04', 'Discontinued', 'Stable'),
('Donepezil', 136, '2022-09-25', '2023-06-20', 'Discontinued', 'Improved'),
('Memantine', 137, '2024-05-25', NULL, 'Ongoing', 'Improved'),
('Lecanemab', 138, '2022-11-02', NULL, 'Ongoing', 'Worsened'),
('Galantamine', 139, '2022-10-31', NULL, 'Ongoing', 'Improved'),
('Memantine', 140, '2022-03-23', '2022-10-24', 'Discontinued', 'Worsened'),
('Galantamine', 141, '2023-12-26', '2024-07-21', 'Discontinued', 'Worsened'),
('Brexpiprazole', 142, '2023-04-30', '2023-10-28', 'Discontinued', 'Worsened'),
('Donepezil', 143, '2023-11-12', '2024-06-09', 'Discontinued', 'Worsened'),
('Auvelity', 144, '2023-05-24', NULL, 'Ongoing', 'Stable'),
('Donepezil', 145, '2022-03-21', '2022-11-03', 'Discontinued', 'Improved'),
('Suvorexant', 146, '2023-12-18', NULL, 'Ongoing', 'Stable'),
('Donepezil', 147, '2022-02-18', '2024-05-14', 'Discontinued', 'Stable'),
('Auvelity', 148, '2023-07-26', NULL, 'Ongoing', 'Stable'),
('Namzaric', 149, '2023-11-10', '2024-01-08', 'Discontinued', 'Worsened'),
('Memantine', 150, '2023-06-28', NULL, 'Ongoing', 'Stable'),
('Memantine', 151, '2023-10-05', NULL, 'Ongoing', NULL),
('Donepezil', 152, '2023-01-25', NULL, 'Ongoing', 'Stable');

INSERT INTO patients_treated_at_gp (Patient_ID, GP_ID) VALUES
(80, 'GP132'),
(81, 'GP065'),
(82, 'GP054'),
(83, 'GP086'),
(84, 'GP082'),
(85, 'GP079'),
(86, 'GP068'),
(87, 'GP064'),
(88, 'GP120'),
(89, 'GP062'),
(90, 'GP126'),
(91, 'GP105'),
(92, 'GP055'),
(93, 'GP136'),
(94, 'GP129'),
(95, 'GP078'),
(96, 'GP080'),
(97, 'GP115'),
(98, 'GP125'),
(99, 'GP076'),
(100, 'GP104'),
(101, 'GP133'),
(102, 'GP108'),
(103, 'GP135'),
(104, 'GP051'),
(105, 'GP099'),
(106, 'GP102'),
(107, 'GP061'),
(108, 'GP095'),
(109, 'GP123'),
(110, 'GP072'),
(111, 'GP138'),
(112, 'GP060'),
(113, 'GP131'),
(114, 'GP113'),
(115, 'GP116'),
(116, 'GP057'),
(117, 'GP056'),
(118, 'GP075'),
(119, 'GP112'),
(120, 'GP073'),
(121, 'GP098'),
(122, 'GP089'),
(123, 'GP067'),
(124, 'GP053'),
(125, 'GP122'),
(126, 'GP085'),
(127, 'GP058'),
(128, 'GP100'),
(129, 'GP101'),
(130, 'GP121'),
(131, 'GP069'),
(132, 'GP074'),
(133, 'GP063'),
(134, 'GP128'),
(135, 'GP094'),
(136, 'GP137'),
(137, 'GP090'),
(138, 'GP106'),
(139, 'GP083'),
(140, 'GP109'),
(141, 'GP091'),
(142, 'GP130'),
(143, 'GP092'),
(144, 'GP059'),
(145, 'GP134'),
(146, 'GP071'),
(147, 'GP124'),
(148, 'GP096'),
(149, 'GP103'),
(150, 'GP087'),
(151, 'GP118'),
(152, 'GP088');

INSERT INTO GP_treatment (GP_ID, Treatment_id)
SELECT 'GP051', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP053', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP054', Treatment_id FROM Treatment WHERE drug_name = 'Galantamine'
UNION ALL
SELECT 'GP055', Treatment_id FROM Treatment WHERE drug_name = 'Rivastigmine'
UNION ALL
SELECT 'GP056', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP057', Treatment_id FROM Treatment WHERE drug_name = 'Lecanemab'
UNION ALL
SELECT 'GP058', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP059', Treatment_id FROM Treatment WHERE drug_name = 'Auvelity'
UNION ALL
SELECT 'GP060', Treatment_id FROM Treatment WHERE drug_name = 'Brexpiprazole'
UNION ALL
SELECT 'GP061', Treatment_id FROM Treatment WHERE drug_name = 'Rivastigmine'
UNION ALL
SELECT 'GP062', Treatment_id FROM Treatment WHERE drug_name = 'Brexpiprazole'
UNION ALL
SELECT 'GP063', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP064', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP065', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP067', Treatment_id FROM Treatment WHERE drug_name = 'Auvelity'
UNION ALL
SELECT 'GP068', Treatment_id FROM Treatment WHERE drug_name = 'Namzaric'
UNION ALL
SELECT 'GP069', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP071', Treatment_id FROM Treatment WHERE drug_name = 'Suvorexant'
UNION ALL
SELECT 'GP072', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP073', Treatment_id FROM Treatment WHERE drug_name = 'Lecanemab'
UNION ALL
SELECT 'GP074', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP075', Treatment_id FROM Treatment WHERE drug_name = 'Donanemab'
UNION ALL
SELECT 'GP076', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP078', Treatment_id FROM Treatment WHERE drug_name = 'Auvelity'
UNION ALL
SELECT 'GP079', Treatment_id FROM Treatment WHERE drug_name = 'Suvorexant'
UNION ALL
SELECT 'GP080', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP082', Treatment_id FROM Treatment WHERE drug_name = 'Suvorexant'
UNION ALL
SELECT 'GP083', Treatment_id FROM Treatment WHERE drug_name = 'Galantamine'
UNION ALL
SELECT 'GP085', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP086', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP087', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP088', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP089', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP090', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP091', Treatment_id FROM Treatment WHERE drug_name = 'Galantamine'
UNION ALL
SELECT 'GP092', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP094', Treatment_id FROM Treatment WHERE drug_name = 'Auvelity'
UNION ALL
SELECT 'GP095', Treatment_id FROM Treatment WHERE drug_name = 'Namzaric'
UNION ALL
SELECT 'GP096', Treatment_id FROM Treatment WHERE drug_name = 'Auvelity'
UNION ALL
SELECT 'GP098', Treatment_id FROM Treatment WHERE drug_name = 'Rivastigmine'
UNION ALL
SELECT 'GP099', Treatment_id FROM Treatment WHERE drug_name = 'Rivastigmine'
UNION ALL
SELECT 'GP100', Treatment_id FROM Treatment WHERE drug_name = 'Galantamine'
UNION ALL
SELECT 'GP101', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP102', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP103', Treatment_id FROM Treatment WHERE drug_name = 'Namzaric'
UNION ALL
SELECT 'GP104', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP105', Treatment_id FROM Treatment WHERE drug_name = 'Auvelity'
UNION ALL
SELECT 'GP106', Treatment_id FROM Treatment WHERE drug_name = 'Lecanemab'
UNION ALL
SELECT 'GP108', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP109', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP112', Treatment_id FROM Treatment WHERE drug_name = 'Namzaric'
UNION ALL
SELECT 'GP113', Treatment_id FROM Treatment WHERE drug_name = 'Auvelity'
UNION ALL
SELECT 'GP115', Treatment_id FROM Treatment WHERE drug_name = 'Rivastigmine'
UNION ALL
SELECT 'GP116', Treatment_id FROM Treatment WHERE drug_name = 'Rivastigmine'
UNION ALL
SELECT 'GP118', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP120', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP121', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP122', Treatment_id FROM Treatment WHERE drug_name = 'Rivastigmine'
UNION ALL
SELECT 'GP123', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP124', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP125', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP126', Treatment_id FROM Treatment WHERE drug_name = 'Galantamine'
UNION ALL
SELECT 'GP128', Treatment_id FROM Treatment WHERE drug_name = 'Auvelity'
UNION ALL
SELECT 'GP129', Treatment_id FROM Treatment WHERE drug_name = 'Namzaric'
UNION ALL
SELECT 'GP130', Treatment_id FROM Treatment WHERE drug_name = 'Brexpiprazole'
UNION ALL
SELECT 'GP131', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP132', Treatment_id FROM Treatment WHERE drug_name = 'Namzaric'
UNION ALL
SELECT 'GP133', Treatment_id FROM Treatment WHERE drug_name = 'Lecanemab'
UNION ALL
SELECT 'GP134', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP135', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP136', Treatment_id FROM Treatment WHERE drug_name = 'Memantine'
UNION ALL
SELECT 'GP137', Treatment_id FROM Treatment WHERE drug_name = 'Donepezil'
UNION ALL
SELECT 'GP138', Treatment_id FROM Treatment WHERE drug_name = 'Donanemab';

INSERT INTO Insurance (Insurance_company_name, Insurance_plan, Number_of_people_covered) VALUES
('UnitedHealthcare', 'Gold PPO 1500', 1415108),
('UnitedHealthcare', 'Bronze HMO 2000', 247405),
('Aetna', 'Gold HSA 250', 1957787),
('Aetna', 'Silver HMO 250', 959420),
('Cigna', 'Platinum HMO 500', 240238),
('Cigna', 'Platinum HMO 2000', 309631),
('Humana', 'Silver HSA 250', 1260272),
('Humana', 'Platinum HMO 500', 147690),
('Kaiser Permanente', 'Silver EPO 1500', 352524),
('Kaiser Permanente', 'Bronze HSA 1000', 1224944),
('Elevance Health', 'Silver HMO 2000', 1247902),
('Elevance Health', 'Silver EPO 250', 1198703),
('Centene', 'Bronze HSA 250', 1348157),
('Centene', 'Silver POS 3000', 1165098),
('Molina Healthcare', 'Platinum EPO 1500', 1278012),
('Molina Healthcare', 'Platinum EPO 1000', 570988),
('Blue Cross Blue Shield', 'Silver PPO 250', 1254653),
('Blue Cross Blue Shield', 'Gold HSA 1500', 1885296),
('Highmark', 'Gold POS 1000', 1327079),
('Highmark', 'Bronze HMO 2000', 926867);

INSERT INTO state_insurance (State_name, Insurance_company_name, Insurance_plan) VALUES
('Alabama', 'Elevance Health', 'Silver HMO 2000'),
('Alaska', 'Molina Healthcare', 'Platinum EPO 1000'),
('Arizona', 'UnitedHealthcare', 'Bronze HMO 2000'),
('Arizona', 'Aetna', 'Gold HSA 250'),
('Arkansas', 'Elevance Health', 'Silver HMO 2000'),
('Arkansas', 'Elevance Health', 'Silver EPO 250'),
('California', 'Highmark', 'Gold POS 1000'),
('California', 'Molina Healthcare', 'Platinum EPO 1500'),
('Colorado', 'Aetna', 'Gold HSA 250'),
('Connecticut', 'Molina Healthcare', 'Platinum EPO 1000'),
('Connecticut', 'Aetna', 'Gold HSA 250'),
('Delaware', 'Kaiser Permanente', 'Bronze HSA 1000'),
('Florida', 'Kaiser Permanente', 'Bronze HSA 1000'),
('Florida', 'Centene', 'Bronze HSA 250'),
('Georgia', 'UnitedHealthcare', 'Gold PPO 1500'),
('Georgia', 'Molina Healthcare', 'Platinum EPO 1500'),
('Hawaii', 'Cigna', 'Platinum HMO 2000'),
('Hawaii', 'Aetna', 'Silver HMO 250'),
('Idaho', 'UnitedHealthcare', 'Bronze HMO 2000'),
('Idaho', 'Humana', 'Silver HSA 250'),
('Illinois', 'Cigna', 'Platinum HMO 500'),
('Illinois', 'Humana', 'Platinum HMO 500'),
('Indiana', 'Centene', 'Bronze HSA 250'),
('Indiana', 'Molina Healthcare', 'Platinum EPO 1000'),
('Iowa', 'Cigna', 'Platinum HMO 2000'),
('Kansas', 'Centene', 'Bronze HSA 250'),
('Kansas', 'Blue Cross Blue Shield', 'Gold HSA 1500'),
('Kentucky', 'Cigna', 'Platinum HMO 500'),
('Kentucky', 'Centene', 'Silver POS 3000'),
('Louisiana', 'Centene', 'Silver POS 3000'),
('Louisiana', 'Elevance Health', 'Silver EPO 250'),
('Maine', 'Humana', 'Platinum HMO 500'),
('Maine', 'Cigna', 'Platinum HMO 500'),
('Maryland', 'Cigna', 'Platinum HMO 2000'),
('Massachusetts', 'Humana', 'Platinum HMO 500'),
('Michigan', 'UnitedHealthcare', 'Gold PPO 1500'),
('Minnesota', 'Highmark', 'Gold POS 1000'),
('Minnesota', 'Cigna', 'Platinum HMO 2000'),
('Mississippi', 'Kaiser Permanente', 'Bronze HSA 1000'),
('Mississippi', 'UnitedHealthcare', 'Gold PPO 1500'),
('Missouri', 'Centene', 'Silver POS 3000'),
('Montana', 'Highmark', 'Bronze HMO 2000'),
('Montana', 'Highmark', 'Gold POS 1000'),
('Nebraska', 'Cigna', 'Platinum HMO 500'),
('Nebraska', 'Blue Cross Blue Shield', 'Silver PPO 250'),
('Nevada', 'Molina Healthcare', 'Platinum EPO 1500'),
('New Hampshire', 'Centene', 'Bronze HSA 250'),
('New Hampshire', 'Highmark', 'Bronze HMO 2000'),
('New Jersey', 'Aetna', 'Silver HMO 250'),
('New Jersey', 'Molina Healthcare', 'Platinum EPO 1000'),
('New Mexico', 'UnitedHealthcare', 'Bronze HMO 2000'),
('New Mexico', 'Humana', 'Silver HSA 250'),
('New York', 'Humana', 'Silver HSA 250'),
('North Carolina', 'Cigna', 'Platinum HMO 2000'),
('North Carolina', 'Aetna', 'Silver HMO 250'),
('North Dakota', 'Highmark', 'Bronze HMO 2000'),
('North Dakota', 'UnitedHealthcare', 'Bronze HMO 2000'),
('Ohio', 'UnitedHealthcare', 'Gold PPO 1500'),
('Oklahoma', 'Blue Cross Blue Shield', 'Gold HSA 1500'),
('Oregon', 'Elevance Health', 'Silver EPO 250'),
('Pennsylvania', 'Aetna', 'Gold HSA 250'),
('Rhode Island', 'Highmark', 'Bronze HMO 2000'),
('South Carolina', 'Cigna', 'Platinum HMO 500'),
('South Carolina', 'Kaiser Permanente', 'Silver EPO 1500'),
('South Dakota', 'Highmark', 'Bronze HMO 2000'),
('South Dakota', 'Elevance Health', 'Silver EPO 250'),
('Tennessee', 'Aetna', 'Silver HMO 250'),
('Tennessee', 'Highmark', 'Bronze HMO 2000'),
('Texas', 'Molina Healthcare', 'Platinum EPO 1500'),
('Texas', 'Molina Healthcare', 'Platinum EPO 1000'),
('Utah', 'Kaiser Permanente', 'Bronze HSA 1000'),
('Utah', 'Aetna', 'Gold HSA 250'),
('Vermont', 'Aetna', 'Silver HMO 250'),
('Virginia', 'Kaiser Permanente', 'Silver EPO 1500'),
('Virginia', 'Molina Healthcare', 'Platinum EPO 1000'),
('Washington', 'Blue Cross Blue Shield', 'Silver PPO 250'),
('West Virginia', 'Humana', 'Silver HSA 250'),
('Wisconsin', 'Cigna', 'Platinum HMO 500'),
('Wisconsin', 'Blue Cross Blue Shield', 'Gold HSA 1500'),
('Wyoming', 'Blue Cross Blue Shield', 'Silver PPO 250');

INSERT INTO individual_insurance_plan
(Patient_ID, Insurance_company_name, Insurance_plan) VALUES
(80, 'Kaiser Permanente', 'Bronze HSA 1000'),
(81, 'Aetna', 'Gold HSA 250'),
(82, 'Kaiser Permanente', 'Silver EPO 1500'),
(83, 'Blue Cross Blue Shield', 'Silver PPO 250'),
(84, 'Elevance Health', 'Silver EPO 250'),
(85, 'Cigna', 'Platinum HMO 2000'),
(86, 'Elevance Health', 'Silver EPO 250'),
(87, 'Humana', 'Platinum HMO 500'),
(88, 'Blue Cross Blue Shield', 'Gold HSA 1500'),
(89, 'Blue Cross Blue Shield', 'Gold HSA 1500'),
(90, 'Blue Cross Blue Shield', 'Silver PPO 250'),
(91, 'Elevance Health', 'Silver HMO 2000'),
(92, 'Humana', 'Platinum HMO 500'),
(93, 'Highmark', 'Bronze HMO 2000'),
(94, 'Humana', 'Silver HSA 250'),
(95, 'Humana', 'Platinum HMO 500'),
(96, 'Centene', 'Bronze HSA 250'),
(97, 'Humana', 'Platinum HMO 500'),
(98, 'Humana', 'Silver HSA 250'),
(99, 'Blue Cross Blue Shield', 'Silver PPO 250'),
(100, 'Molina Healthcare', 'Platinum EPO 1000'),
(101, 'Elevance Health', 'Silver EPO 250'),
(102, 'UnitedHealthcare', 'Gold PPO 1500'),
(103, 'UnitedHealthcare', 'Gold PPO 1500'),
(104, 'Kaiser Permanente', 'Silver EPO 1500'),
(105, 'Molina Healthcare', 'Platinum EPO 1000'),
(106, 'Kaiser Permanente', 'Silver EPO 1500'),
(107, 'Humana', 'Silver HSA 250'),
(108, 'Highmark', 'Bronze HMO 2000'),
(109, 'Elevance Health', 'Silver EPO 250'),
(110, 'Molina Healthcare', 'Platinum EPO 1500'),
(111, 'Elevance Health', 'Silver EPO 250'),
(112, 'Elevance Health', 'Silver EPO 250'),
(113, 'Aetna', 'Gold HSA 250'),
(114, 'Humana', 'Platinum HMO 500'),
(115, 'Aetna', 'Silver HMO 250'),
(116, 'Humana', 'Platinum HMO 500'),
(117, 'Molina Healthcare', 'Platinum EPO 1000'),
(118, 'Humana', 'Silver HSA 250'),
(119, 'Elevance Health', 'Silver HMO 2000'),
(120, 'Humana', 'Silver HSA 250'),
(121, 'Molina Healthcare', 'Platinum EPO 1000'),
(122, 'Highmark', 'Bronze HMO 2000'),
(123, 'Highmark', 'Bronze HMO 2000'),
(124, 'UnitedHealthcare', 'Gold PPO 1500'),
(125, 'Molina Healthcare', 'Platinum EPO 1000'),
(126, 'Elevance Health', 'Silver EPO 250'),
(127, 'Aetna', 'Gold HSA 250'),
(128, 'Aetna', 'Silver HMO 250'),
(129, 'Centene', 'Bronze HSA 250'),
(130, 'Humana', 'Silver HSA 250'),
(131, 'Molina Healthcare', 'Platinum EPO 1000'),
(132, 'Cigna', 'Platinum HMO 2000'),
(133, 'Centene', 'Silver POS 3000'),
(134, 'Elevance Health', 'Silver HMO 2000'),
(135, 'Aetna', 'Gold HSA 250'),
(136, 'Centene', 'Bronze HSA 250'),
(137, 'Molina Healthcare', 'Platinum EPO 1500'),
(138, 'Centene', 'Bronze HSA 250'),
(139, 'Aetna', 'Gold HSA 250'),
(140, 'Cigna', 'Platinum HMO 2000'),
(141, 'Cigna', 'Platinum HMO 2000'),
(142, 'Cigna', 'Platinum HMO 500'),
(143, 'UnitedHealthcare', 'Gold PPO 1500'),
(144, 'Cigna', 'Platinum HMO 500'),
(145, 'Highmark', 'Gold POS 1000'),
(146, 'Molina Healthcare', 'Platinum EPO 1500'),
(147, 'Cigna', 'Platinum HMO 500'),
(148, 'Highmark', 'Bronze HMO 2000'),
(149, 'Highmark', 'Bronze HMO 2000'),
(150, 'Molina Healthcare', 'Platinum EPO 1000'),
(151, 'Elevance Health', 'Silver EPO 250'),
(152, 'Cigna', 'Platinum HMO 500');

INSERT INTO GP_insurance (GP_ID, Insurance_company_name, Insurance_plan, Coverage_Percentage) VALUES
('GP051', 'UnitedHealthcare', 'Gold PPO 1500', 40.78),
('GP052', 'Blue Cross Blue Shield', 'Silver PPO 250', 81.22),
('GP053', 'Centene', 'Silver POS 3000', 94.26),
('GP054', 'Humana', 'Silver HSA 250', 41.54),
('GP055', 'Kaiser Permanente', 'Bronze HSA 1000', 67.56),
('GP056', 'Kaiser Permanente', 'Silver EPO 1500', 63.05),
('GP056', 'Blue Cross Blue Shield', 'Gold HSA 1500', 47.21),
('GP057', 'Molina Healthcare', 'Platinum EPO 1500', 84.83),
('GP057', 'Highmark', 'Gold POS 1000', 68.42),
('GP058', 'Blue Cross Blue Shield', 'Gold HSA 1500', 48.35),
('GP059', 'Molina Healthcare', 'Platinum EPO 1500', 82.71),
('GP060', 'Cigna', 'Platinum HMO 500', 49.48),
('GP061', 'Highmark', 'Bronze HMO 2000', 70.61),
('GP061', 'Aetna', 'Silver HMO 250', 57.93),
('GP062', 'Aetna', 'Silver HMO 250', 43.13),
('GP062', 'Blue Cross Blue Shield', 'Gold HSA 1500', 50.52),
('GP063', 'Aetna', 'Silver HMO 250', 67.92),
('GP064', 'Aetna', 'Gold HSA 250', 64.38),
('GP065', 'Kaiser Permanente', 'Silver EPO 1500', 64.88),
('GP066', 'Blue Cross Blue Shield', 'Silver PPO 250', 78.46),
('GP066', 'Humana', 'Platinum HMO 500', 88.21),
('GP067', 'Blue Cross Blue Shield', 'Gold HSA 1500', 86.2),
('GP067', 'Humana', 'Silver HSA 250', 47.54),
('GP068', 'Centene', 'Bronze HSA 250', 64.32),
('GP069', 'Humana', 'Platinum HMO 500', 63.56),
('GP070', 'Kaiser Permanente', 'Bronze HSA 1000', 83.12),
('GP071', 'Elevance Health', 'Silver EPO 250', 47.86),
('GP072', 'Molina Healthcare', 'Platinum EPO 1500', 52.08),
('GP073', 'Centene', 'Bronze HSA 250', 88.67),
('GP074', 'Humana', 'Platinum HMO 500', 48.88),
('GP075', 'Blue Cross Blue Shield', 'Silver PPO 250', 58.65),
('GP075', 'Centene', 'Bronze HSA 250', 50.77),
('GP076', 'Aetna', 'Gold HSA 250', 41.07),
('GP076', 'Elevance Health', 'Silver EPO 250', 70.47),
('GP077', 'UnitedHealthcare', 'Gold PPO 1500', 58.23),
('GP077', 'Centene', 'Bronze HSA 250', 74.32),
('GP078', 'Aetna', 'Silver HMO 250', 94.18),
('GP079', 'Aetna', 'Silver HMO 250', 44.62),
('GP080', 'UnitedHealthcare', 'Bronze HMO 2000', 54.87),
('GP080', 'Cigna', 'Platinum HMO 2000', 47.13),
('GP081', 'Kaiser Permanente', 'Silver EPO 1500', 48.22),
('GP081', 'Centene', 'Bronze HSA 250', 90.55),
('GP082', 'Elevance Health', 'Silver HMO 2000', 55.35),
('GP082', 'Aetna', 'Gold HSA 250', 83.98),
('GP083', 'Centene', 'Silver POS 3000', 89.24),
('GP084', 'UnitedHealthcare', 'Gold PPO 1500', 84.09),
('GP084', 'Aetna', 'Gold HSA 250', 44.61),
('GP085', 'Aetna', 'Gold HSA 250', 54.54),
('GP086', 'Molina Healthcare', 'Platinum EPO 1500', 40.64),
('GP087', 'Kaiser Permanente', 'Silver EPO 1500', 42.38),
('GP087', 'Cigna', 'Platinum HMO 500', 79.02),
('GP088', 'Cigna', 'Platinum HMO 2000', 54.4),
('GP089', 'Humana', 'Silver HSA 250', 91.27),
('GP090', 'Blue Cross Blue Shield', 'Silver PPO 250', 55.95),
('GP090', 'Humana', 'Silver HSA 250', 67.5),
('GP091', 'Kaiser Permanente', 'Silver EPO 1500', 59.09),
('GP092', 'Kaiser Permanente', 'Silver EPO 1500', 42.03),
('GP093', 'Blue Cross Blue Shield', 'Silver PPO 250', 70.31),
('GP094', 'Blue Cross Blue Shield', 'Silver PPO 250', 66.11),
('GP095', 'Aetna', 'Silver HMO 250', 76.11),
('GP095', 'Centene', 'Silver POS 3000', 70.02),
('GP096', 'Blue Cross Blue Shield', 'Silver PPO 250', 77.83),
('GP096', 'Kaiser Permanente', 'Bronze HSA 1000', 94.03),
('GP097', 'Humana', 'Silver HSA 250', 62.26),
('GP097', 'Cigna', 'Platinum HMO 500', 59.12),
('GP098', 'Cigna', 'Platinum HMO 500', 40.78),
('GP099', 'Centene', 'Silver POS 3000', 43.05),
('GP099', 'Cigna', 'Platinum HMO 2000', 76.59),
('GP100', 'Blue Cross Blue Shield', 'Silver PPO 250', 72.93),
('GP100', 'Kaiser Permanente', 'Bronze HSA 1000', 78.1),
('GP101', 'Molina Healthcare', 'Platinum EPO 1500', 50.19),
('GP102', 'Molina Healthcare', 'Platinum EPO 1500', 54.48),
('GP102', 'UnitedHealthcare', 'Gold PPO 1500', 92.9),
('GP103', 'Humana', 'Platinum HMO 500', 93.11),
('GP103', 'UnitedHealthcare', 'Bronze HMO 2000', 57.03),
('GP104', 'Cigna', 'Platinum HMO 2000', 58.44),
('GP104', 'UnitedHealthcare', 'Gold PPO 1500', 44.61),
('GP105', 'Blue Cross Blue Shield', 'Silver PPO 250', 53.65),
('GP105', 'Humana', 'Silver HSA 250', 82.69),
('GP106', 'Kaiser Permanente', 'Silver EPO 1500', 84.94),
('GP107', 'Centene', 'Bronze HSA 250', 72.27),
('GP108', 'UnitedHealthcare', 'Gold PPO 1500', 56.73),
('GP108', 'Kaiser Permanente', 'Bronze HSA 1000', 52.8),
('GP109', 'Highmark', 'Bronze HMO 2000', 61.42),
('GP110', 'Molina Healthcare', 'Platinum EPO 1000', 55.63),
('GP110', 'Cigna', 'Platinum HMO 500', 74.03),
('GP111', 'UnitedHealthcare', 'Bronze HMO 2000', 85.37),
('GP112', 'Blue Cross Blue Shield', 'Silver PPO 250', 90.04),
('GP112', 'Cigna', 'Platinum HMO 500', 81.41),
('GP113', 'Highmark', 'Gold POS 1000', 83.89),
('GP114', 'Aetna', 'Gold HSA 250', 41.71),
('GP115', 'Elevance Health', 'Silver EPO 250', 92.77),
('GP116', 'Molina Healthcare', 'Platinum EPO 1500', 42.79),
('GP116', 'Blue Cross Blue Shield', 'Gold HSA 1500', 41.04),
('GP117', 'Molina Healthcare', 'Platinum EPO 1000', 54.51),
('GP118', 'Aetna', 'Gold HSA 250', 89.38),
('GP118', 'Blue Cross Blue Shield', 'Silver PPO 250', 45.06),
('GP119', 'Molina Healthcare', 'Platinum EPO 1000', 53.87),
('GP120', 'Kaiser Permanente', 'Silver EPO 1500', 52.91),
('GP121', 'Humana', 'Platinum HMO 500', 80.69),
('GP122', 'Molina Healthcare', 'Platinum EPO 1000', 44.22),
('GP122', 'Centene', 'Bronze HSA 250', 90.08),
('GP123', 'UnitedHealthcare', 'Bronze HMO 2000', 44.26),
('GP123', 'Humana', 'Silver HSA 250', 48.11),
('GP124', 'Kaiser Permanente', 'Bronze HSA 1000', 47.34),
('GP124', 'Highmark', 'Gold POS 1000', 66.53),
('GP125', 'Kaiser Permanente', 'Silver EPO 1500', 78.07),
('GP125', 'Aetna', 'Silver HMO 250', 77.16),
('GP126', 'Blue Cross Blue Shield', 'Silver PPO 250', 65.56),
('GP126', 'Kaiser Permanente', 'Bronze HSA 1000', 65.65),
('GP127', 'Blue Cross Blue Shield', 'Gold HSA 1500', 50.96),
('GP128', 'Molina Healthcare', 'Platinum EPO 1000', 40.96),
('GP129', 'Aetna', 'Gold HSA 250', 93.25),
('GP129', 'Blue Cross Blue Shield', 'Silver PPO 250', 64.72),
('GP130', 'Centene', 'Bronze HSA 250', 90.41),
('GP130', 'Humana', 'Silver HSA 250', 91.18),
('GP131', 'Highmark', 'Gold POS 1000', 44.97),
('GP132', 'Elevance Health', 'Silver EPO 250', 73.19),
('GP132', 'Cigna', 'Platinum HMO 500', 74.74),
('GP133', 'Aetna', 'Silver HMO 250', 52.73),
('GP133', 'Elevance Health', 'Silver EPO 250', 89.37),
('GP134', 'Centene', 'Bronze HSA 250', 48.75),
('GP134', 'UnitedHealthcare', 'Gold PPO 1500', 92.25),
('GP135', 'Centene', 'Bronze HSA 250', 80.0),
('GP135', 'Kaiser Permanente', 'Bronze HSA 1000', 62.89),
('GP136', 'Elevance Health', 'Silver HMO 2000', 86.21),
('GP136', 'Aetna', 'Silver HMO 250', 40.1),
('GP137', 'Centene', 'Bronze HSA 250', 91.69),
('GP137', 'Aetna', 'Silver HMO 250', 50.77),
('GP138', 'Kaiser Permanente', 'Bronze HSA 1000', 53.93);

INSERT INTO insurance_therapy_coverage
    (Drug_name, Insurance_company_name, insurance_therapy_coverage_percentage)
VALUES
('Donanemab', 'UnitedHealthcare', 30.0),
('Donanemab', 'Aetna', 32.5),
('Donanemab', 'Cigna', 28.0),
('Lecanemab', 'UnitedHealthcare', 35.0),
('Lecanemab', 'Kaiser Permanente', 38.0),
('Lecanemab', 'Molina Healthcare', 34.5),
('Benzgalantamine', 'Aetna', 20.0),
('Benzgalantamine', 'Humana', 22.5),
('Benzgalantamine', 'Cigna', 19.0),
('Donepezil', 'UnitedHealthcare', 85.5),
('Donepezil', 'Aetna', 87.0),
('Donepezil', 'Blue Cross Blue Shield', 88.0),
('Donepezil', 'Kaiser Permanente', 89.0),
('Galantamine', 'Cigna', 78.2),
('Galantamine', 'Aetna', 80.0),
('Galantamine', 'Humana', 79.0),
('Rivastigmine', 'UnitedHealthcare', 75.4),
('Rivastigmine', 'Molina Healthcare', 75.0),
('Rivastigmine', 'Blue Cross Blue Shield', 78.0),
('Memantine', 'UnitedHealthcare', 82.75),
('Memantine', 'Aetna', 84.5),
('Memantine', 'Kaiser Permanente', 86.0),
('Namzaric', 'UnitedHealthcare', 65.0),
('Namzaric', 'Cigna', 63.0),
('Namzaric', 'Humana', 66.0),
('Brexpiprazole', 'Aetna', 57.5),
('Brexpiprazole', 'Cigna', 53.0),
('Auvelity', 'UnitedHealthcare', 50.1),
('Auvelity', 'Humana', 51.0),
('Suvorexant', 'Kaiser Permanente', 64.0),
('Suvorexant', 'Aetna', 62.5);