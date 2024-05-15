-- CREATE TABLE
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    reports_to INT,
    age INT
);

-- THE SOLUTION
# Write your MySQL query statement below
SELECT e1.employee_id, e1.name, 
Count(e2.reports_to)  AS reports_count, 
Round(Avg(e2.age), 0) AS average_age 
FROM Employees e1 
JOIN Employees e2 
ON e1.employee_id = e2.reports_to
group by e1.employee_id, e1.NAME 
ORDER  BY 1 ASC; 