# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
DELETE p1
FROM Person p1, Person p2
WHERE p1.email = p2.email
AND p1.Id > p2.Id;


-- EXPLANATION:
-- Table Aliases: Person p1, Person p2: Here, we are creating two aliases for the Person table. 
--                p1 and p2 are used to refer to the same table in two different roles in the query.

-- JOIN Condition: WHERE p1.email = p2.email: This condition specifies that we are looking 
--                 for rows where the email in p1 is the same as the email in p2. This identifies duplicate email entries.

-- Id Comparison: AND p1.Id > p2.Id: This condition adds a comparison between the IDs of p1 and p2. 
--                Specifically, it ensures that we only consider pairs of rows where p1 has a greater Id than p2.