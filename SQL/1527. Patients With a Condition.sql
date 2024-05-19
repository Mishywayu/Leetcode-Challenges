# Write your MySQL query statement below
SELECT patient_id, patient_name, conditions
FROM Patients
where conditions LIKE '%DIAB1%'

The predicates LIKE and ILIKE are used to search for strings that match a given pattern,
so you can search for a single word (or string) in a long text field.
-- How about >>>
-- SELECT * FROM Patients
-- WHERE conditions iLIKE = ('%DIAB1%');
-- use the LIKE operator if you want to perform a case sensitive pattern matching, 
-- and the ILIKE operator if you want to perform a case insensitive pattern matching


-- EXPLANATION:
-- The SELECT statement specifies the columns patient_id, patient_name, and conditions to be retrieved.
-- The FROM Patients clause indicates that the data is coming from the Patients table.
-- The WHERE conditions LIKE '%DIAB1%' clause filters rows where the conditions 
-- column contains the substring DIAB1 anywhere in the string, indicating that the patient has Type I Diabetes.


or

SELECT
    patient_id,
    patient_name,
    conditions
FROM Patients
WHERE conditions LIKE '% DIAB1 %'
   OR conditions LIKE 'DIAB1 %'
   OR conditions LIKE '% DIAB1'
   OR conditions = 'DIAB1';

---WRONG ANSWER
-- EXPLANATION:
-- This query checks for DIAB1 in different possible positions within the conditions string:
-- As a standalone condition (conditions = 'DIAB1').
-- At the start of the string followed by a space (conditions LIKE 'DIAB1 %').
-- At the end of the string preceded by a space (conditions LIKE '% DIAB1').
-- In the middle of the string surrounded by spaces (conditions LIKE '% DIAB1 %').