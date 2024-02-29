#THE SOLUTION:
# Write your MySQL query statement below
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;



#CREATE TABLE
create table Tweets (
    tweet_id INT NOT NULL PRIMARY KEY,
    content varchar(255) not null
)