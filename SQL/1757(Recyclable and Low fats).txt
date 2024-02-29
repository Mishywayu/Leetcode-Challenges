#THE SOLUTION:
# Write your MySQL query statement below
select product_id from Products
where low_fats = 'Y'
and recyclable = 'Y'


#CREATE TABLE
CREATE TABLE Products(
  product_id INT PRIMARY KEY,
  low_fats AS CASE WHEN low_fat_value = 'Y' THEN 'Low fat' ELSE 'Not low fat' END PERSISTED,
  recyclable AS CASE WHEN recyclable_value = 'Y' THEN 'Recyclable' ELSE 'Not recyclable' END PERSISTED,
  low_fat_value AS (CASE WHEN low_fats = 'Low fat' THEN 'Y' ELSE 'N' END) PERSISTED,
  recyclable_value AS (CASE WHEN recyclable = 'Recyclable' THEN 'Y' ELSE 'N' END) PERSISTED
);