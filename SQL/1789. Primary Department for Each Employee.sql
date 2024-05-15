# Write your MySQL query statement below
SELECT employee_id,department_id FROM Employee
WHERE primary_flag = 'Y'
OR employee_id IN (SELECT employee_id FROM Employee
GROUP BY employee_id
HAVING count(*) = 1);


-- Explanation:
-- line 2: select the columns that we need i.e employee_id and department_id
-- line 3: selects the columns at a given condition,
--         which is >>> select the columns if which have the primary flag as 'Y', so it leaves out the columns whose 
--         primary flag is 'N'
-- line 4 through line 6: this selects those employees who only appear once, meaning from the data they only belong to one department
--         (otherwise they would have appeared more than once)
--         it selects those that appear once by count that id 
--         count(*) = 1 is like saying count all appearances if the count is just one, it means they have appeared that once