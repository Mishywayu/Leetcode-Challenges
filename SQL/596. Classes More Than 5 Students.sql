#THE SOLUTION
# Write your MySQL query statement below
select `class` from `courses` 
group by `class` 
having count(distinct `student`) >= 5

-- having - if you want to compare the result from 'group by'