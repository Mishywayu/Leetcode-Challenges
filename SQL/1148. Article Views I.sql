#THE SOLUTION:
# Write your MySQL query statement below
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY 1;


#CREATE TABLE
CREATE TABLE Views (
  article_id INT,
  author_id INT,
  viewer_id INT,
  view_date DATE
);