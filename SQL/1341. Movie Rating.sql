# Write your MySQL query statement below
select name as results
from (select Users.name, count(movie_id) as movie_count from MovieRating
left join Users 
on MovieRating.user_id=Users.user_id
group by MovieRating.user_id
order by movie_count desc, name
limit 1) a
union select movie_name as results from 
(SELECT Movies.title as movie_name, avg(MovieRating.rating) as grade 
from MovieRating
left join Movies
on MovieRating.movie_id=Movies.movie_id
where SUBSTR(MovieRating.created_at,1,7)="2020-02"
group by MovieRating.movie_id
order by grade desc, movie_name
limit 1) b