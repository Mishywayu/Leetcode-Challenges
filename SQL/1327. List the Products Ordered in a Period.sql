-- # Write your MySQL query statement below
SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p
JOIN Orders o ON p.product_id = o.product_id
WHERE o.order_date >= '2020-02-01' 
AND o.order_date < '2020-03-01'
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100;


-- SELECT Clause: Selects product_name from the Products table.
--                Uses SUM(o.unit) AS units to calculate the total number of units ordered for each product.
-- FROM Clause: Specifies Products p as the main table.
-- JOIN Clause: Joins Orders o on the common column product_id.
-- WHERE Clause: Filters the orders to include only those from February 2020 by checking if order_date 
--               is between 2020-02-01 and 2020-03-01.
-- GROUP BY Clause: Groups the results by product_name.
-- HAVING Clause: Filters the grouped results to include only those products with a total unit sum of at least 100.