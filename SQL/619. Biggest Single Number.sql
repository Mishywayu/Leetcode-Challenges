#The solution:
# Write your MySQL query statement below
SELECT MAX(num) AS num
FROM (SELECT num FROM MyNumbers
GROUP BY 1
HAVING COUNT(1) = 1)
AS m;

#HAVING COUNT(1) = 1) filters nums that appear exactly once.