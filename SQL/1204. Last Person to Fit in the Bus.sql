# Write your MySQL query statement below
WITH CumulativeWeights AS (
    SELECT 
        person_id,
        person_name,
        weight,
        turn,
        SUM(weight) OVER (ORDER BY turn) AS cumulative_weight
    FROM 
        Queue
)
SELECT 
    person_name
FROM 
    CumulativeWeights
WHERE 
    cumulative_weight <= 1000
ORDER BY 
    turn DESC
LIMIT 1;


-- Explanation:
-- Common Table Expression (CTE): The CumulativeWeights CTE calculates the cumulative weight 
--                                of people as they board the bus.

-- SUM(weight) OVER (ORDER BY turn) AS cumulative_weight: This window function calculates the 
--                                                        running total of the weights ordered by the turn column.

-- Filter and Select: In the main query:
-- WHERE cumulative_weight <= 1000: Filters out rows where the cumulative weight exceeds the bus's weight limit.

-- ORDER BY turn DESC LIMIT 1: Orders the remaining rows in descending order of turn and selects the first row. 
--                             This gives us the last person who can board the bus without exceeding the weight limit.