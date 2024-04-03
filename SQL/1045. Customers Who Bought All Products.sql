# Write your MySQL query statement below
select a.customer_id from
(select customer_id, count(distinct product_key) as num
from Customer
group by customer_id) a
where a.num = (select count(distinct product_key) from Product);