#THE SOLUTION:
# Write your MySQL query statement below
SELECT COALESCE(EmployeeUNI.unique_id, NULL) as unique_id, Employees.name 
FROM Employees
LEFT JOIN EmployeeUNI 
ON Employees.id = EmployeeUNI.id;