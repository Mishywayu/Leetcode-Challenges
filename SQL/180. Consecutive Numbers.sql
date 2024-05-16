# Write your MySQL query statement below
WITH NumberSequences AS (
    SELECT
        num,
        LAG(num, 1) OVER (ORDER BY id) AS prev_num,
        LEAD(num, 1) OVER (ORDER BY id) AS next_num
    FROM Logs
),
ConsecutiveNums AS (SELECT num FROM NumberSequences
WHERE num = prev_num AND num = next_num)
SELECT DISTINCT num as ConsecutiveNums FROM ConsecutiveNums;

---Though when I run this query is shows accepted but upon accepting it, it shows wrong answer
-- Explanation: HINT:(LAG AND LEAD Functions)
-- LAG - is a function that allows access to values stored in a different row above the current row.
-- LEAD - is a function that allows access to values stored in a different row below the current row.
-- Their syntax are similar: LEAD/LAG (expression[,offset[,default_value]]) OVER (ORDER BY column name(s))
-- expression - name of column we're comparing
-- offset - number of rows to skip
-- default value - number/value to return if the stored value is empty

-- Line 2 to line 7: it calculates the previous num and the next num of each row
-- line 9 to line 15: it selects rows where 'num' matches both the previous num and the next num,
--                    indicating that the number appears consecutively at least three times
-- line 17 to line 20: the final select - retrieves the unique numbers from the ConsecutiveNums CTE