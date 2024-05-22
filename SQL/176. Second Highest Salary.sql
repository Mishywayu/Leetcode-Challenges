# Write your MySQL query statement below
SELECT (SELECT DISTINCT salary FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;

-- OFFSET dictates the number of rows to skip from the beginning of the returned data before presenting the results.
-- EXPLANATION:
-- The subquery SELECT DISTINCT salary FROM Employee retrieves all unique salaries from the Employee table.
-- ORDER BY salary DESC sorts these salaries in descending order.
-- LIMIT 1 OFFSET 1 skips the highest salary and limits the result to the next one, 
-- effectively selecting the second highest salary.
-- The outer query wraps this to give a single column result named SecondHighestSalary.