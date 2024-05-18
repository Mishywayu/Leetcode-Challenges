# Write your MySQL query statement below
SELECT user_id, INITCAP(name)
FROM Users
ORDER BY user_id
-- THIS SOLUTION FAILED 😪

-- I used INITCAP because it is a function that returns char with the first letter of each word 
-- in uppercase and all others in lowercase.
-- char can be of any of the data types CHAR , VARCHAR2 , NCHAR , or NVARCHAR2 .

-- WHAT'S THE DIFFERENCE BTN CHAR,VARCHAR2,NCHAR && NVARCHAR2??? 🤔

-- THIS WORKS
SELECT
    user_id,
    CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2))) AS name
FROM Users
ORDER BY user_id;

-- EXPLANATIORN: The other option was to manipulate the 'name' using SQL string functions ie UPPER && LOWER 
--               && SUBSTRING functions.
-- SUBSTRING(name, 1, 1): Extracts the first character of the name.
-- UPPER(SUBSTRING(name, 1, 1)): Converts the first character to uppercase.
-- SUBSTRING(name, 2): Extracts the substring from the second character to the end of the name.
-- LOWER(SUBSTRING(name, 2)): Converts the rest of the characters to lowercase.
-- CONCAT(...): Concatenates the uppercase first character with the lowercase rest of the name. (join)
-- ORDER BY user_id: Orders the result by user_id.

-- We all know UPPER changes char to uppercase, and LOWER changes char to lowercase.
-- SUBSTRING extracts some charachers from a string.
-- Syntax: SUBSTRING(string,start,length)
-- string- the string to extract from
-- start - the start position
-- length - the number of characters to extract
-- In our query,
-- SUBSTRING(name, 1, 1) >>>> name - string to extract from
--                             1 - the start position (the first position)
--                             1 - the length  etc