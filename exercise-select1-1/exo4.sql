-- Exercise 4
-- 1. Write a query that:
-- generates a single column that contains the columns: firstname (first name of the
-- library member), middleinitial (middle name initial), and lastname (last name) from
-- the member table for all library members whose last name is Anderson.
-- name the resulting column email_name (use the alias email_name for the column).
-- modify the command to return a 'list of proposed email logins' created by concatenating
-- the library member’s first name, the middle name initial, and the first two letters of the last
-- name (all in lowercase).
-- use the SUBSTRING function to get a part of the string column and LOWER to return the
-- result in lowercase.
-- use the operator + to concatenate the strings.

SELECT 
    firstname + ' ' + middleinitial + ' ' + lastname AS email_name
FROM member
WHERE lastname = 'Anderson'

-- second part

SELECT 
    LOWER(firstname + middleinitial + SUBSTRING(lastname, 1, 2)) AS email_name
FROM member
WHERE lastname = 'Anderson'
