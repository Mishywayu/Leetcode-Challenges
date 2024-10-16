-- # Write your MySQL query statement below
WITH ActiveUsers AS (
    SELECT 
        user_id,
        activity_date
    FROM 
        Activity
    WHERE 
        activity_date BETWEEN '2019-06-28' AND '2019-07-27'
    GROUP BY 
        user_id, activity_date
)
SELECT 
    activity_date AS day, 
    COUNT(user_id) AS active_users
FROM 
    ActiveUsers
GROUP BY 
    activity_date
ORDER BY 
    activity_date;