#SOLUTION
# Write your MySQL query statement below
SELECT name, population, area FROM World 
WHERE area >= 3000000 OR population >= 25000000;


#CREATE TABLE
create table World (
    name varchar(255) not null PRIMARY KEY,
    continent varchar(255),
    area int,
    poplation int,
    gdp bigint
)