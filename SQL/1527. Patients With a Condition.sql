-- # Write your MySQL query statement below
SELECT 
    patient_id, 
    patient_name, 
    conditions
FROM 
    Patients
WHERE 
    conditions REGEXP '(^|[[:space:]]|[[:punct:]])DIAB1[0-9]*($|[[:space:]]|[[:punct:]])';
