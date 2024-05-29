# Write your MySQL query statement below
SELECT 'Low Salary' AS category, COUNT(*) AS accounts_count 
FROM Accounts 
WHERE income < 20000
UNION ALL

SELECT 'Average Salary' AS category, COUNT(*) AS accounts_count 
FROM Accounts 
WHERE  income BETWEEN 20000 AND 50000
UNION ALL

SELECT 'High Salary' AS category, COUNT(*) AS accounts_count 
FROM Accounts 
WHERE income > 50000;


-- Explanation
-- First SELECT Statement:
-- category: This column is a constant string 'Low Salary' indicating the category.
-- accounts_count: This column counts the number of accounts where the income is strictly less than $20000.

-- Second SELECT Statement:
-- category: This column is a constant string 'Average Salary' indicating the category.
-- accounts_count: This column counts the number of accounts where the income is between $20000 and $50000, inclusive.

-- Third SELECT Statement:
-- category: This column is a constant string 'High Salary' indicating the category.
-- accounts_count: This column counts the number of accounts where the income is strictly greater than $50000.