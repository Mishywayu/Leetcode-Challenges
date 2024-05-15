# Write your MySQL query statement below
SELECT x,y,z,
IF(x+y>z AND y+z>x AND x+z>y, 'Yes', 'No') AS triangle
FROM Triangle

-- Explanation:
-- line 2 through line 3 is the selecting the columns we need
-- line 4 is the table where we are selecting FROM
-- line 3: note that we are basically adding another column called 'triangle', and it
--         shows if the column x,y,z can form a triangle.
--         The Triangle inequality theorem states that 3 sides can form a triangle if and only if the sum of 2 sides
--         is greater than the third side. 
--         So we are checking if the sum of 2 sides is greater than the third side, and if it is 
--         we print 'Yes', otherwise we print 'No'