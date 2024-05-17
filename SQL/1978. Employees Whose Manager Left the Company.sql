# Write your MySQL query statement below
SELECT employee_id
FROM Employees e
WHERE salary < 30000
  AND manager_id IS NOT NULL
  AND manager_id NOT IN (SELECT employee_id FROM Employees)
ORDER BY employee_id;


-- Explanation: 
-- Line 2: We select the employee_id of the employees who meet the criteria.
-- line 3: We query from the Employees table and alias it as e.
-- line 4: We filter employees whose salary is less than $30,000.
-- line 5: We ensure the employee has a manager.
-- line 6:  We check that the manager_id does not exist in the list of employee_ids from the Employees table, indicating the manager has left.
-- line 7: We order the result by employee_id