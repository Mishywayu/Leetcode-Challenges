# Write your MySQL query statement below
SELECT user_id, name, mail
FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$';


-- REGEXP: This operator is used for pattern matching in MySQL.
-- ^[A-Za-z]: Ensures that the email prefix starts with a letter.
-- [A-Za-z0-9_.-]*: Allows any combination of letters, digits, underscores, periods, and dashes after
--  the initial letter.
-- @leetcode\\.com$: Ensures the email ends with @leetcode.com. Note that the dot . is escaped 
-- with double backslashes \\ because it is a special character in regular expressions.