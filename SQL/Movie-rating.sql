-- #Write solution here
-- Find the user who has rated the most movies
SELECT 
    ur.name AS results
FROM (
    SELECT 
        u.name, 
        COUNT(mr.movie_id) AS rating_count
    FROM 
        Users u
    JOIN 
        MovieRating mr ON u.user_id = mr.user_id
    GROUP BY 
        u.name
    ORDER BY 
        rating_count DESC, u.name
    LIMIT 1
) AS ur

UNION ALL

-- Find the movie with the highest average rating in February 2020
SELECT 
    mf.title AS results
FROM (
    SELECT 
        m.title, 
        AVG(mr.rating) AS avg_rating
    FROM 
        Movies m
    JOIN 
        MovieRating mr ON m.movie_id = mr.movie_id
    WHERE 
        mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY 
        m.title
    ORDER BY 
        avg_rating DESC, m.title
    LIMIT 1
) AS mf;