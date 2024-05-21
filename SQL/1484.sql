# Write your MySQL query statement below
SELECT 
    sell_date, 
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date


-- Explanation
-- SELECT sell_date: Selects the sell_date to group by.

-- COUNT(DISTINCT product) AS num_sold: Counts the number of unique products sold on each date.

-- GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ', ') AS products: 
-- Concatenates the distinct product names for each date, sorted lexicographically and separated by commas.

-- FROM Activities: Specifies the table to query.

-- GROUP BY sell_date: Groups the results by each sell_date.

-- ORDER BY sell_date: Orders the final result by sell_date.