#THE SOLUTION
# Write your MySQL query statement below
SELECT w2.Id
FROM Weather w1
JOIN Weather w2 ON w1.RecordDate = DATE_SUB(w2.RecordDate, INTERVAL 1 DAY)
WHERE w2.Temperature > w1.Temperature;