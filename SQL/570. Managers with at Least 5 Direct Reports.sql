#THE SOLUTION:
# Write your MySQL query statement below
SELECT M.name
FROM Employee M
WHERE (SELECT COUNT(*)FROM Employee E WHERE E.managerId = M.id) >= 5;