# Write your MySQL query statement below
SELECT 
    CASE 
        WHEN MOD(id, 2) = 0 THEN id - 1  -- For even ID, swap with the previous odd ID
        WHEN MOD(id, 2) = 1 AND id = (SELECT MAX(id) FROM Seat) THEN id  -- If last student, do not swap
        ELSE id + 1  -- For odd ID, swap with the next even ID
    END AS id,
    student
FROM 
    Seat
ORDER BY 
    id ASC;
