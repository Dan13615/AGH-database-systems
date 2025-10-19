-- Exercise 5
-- 1. Write a query that selects title and title_no from the title table.
-- the result should be a single column in the format as shown in the example below:
-- the title is: Poems, title number is: 7
-- the query should return a single column based on an expression that concatenates 4
-- elements:
-- the constant string 'The title is: '
-- the value of the title column
-- the constant string 'title number is:'
-- the value of the title_no column.

SELECT CONCAT('The title is: ', title, ', title number is: ', title_no) 
AS Description FROM Title
