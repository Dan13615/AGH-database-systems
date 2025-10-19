use library

--Exercise 1
-- 1. Write a select statement to retrieve the book number (ID) and the book title.

SELECT title_no, title FROM Title


-- 2. Write a query that selects the title with the number (ID) 10.

SELECT title FROM Title t
WHERE t.title_no = 10


-- 3. Write a select statement to retrieve the book number (ID) and the author for all books written
-- by 'Charles Dickens' or 'Jane Austen'.

SELECT title_no, author FROM Title t
WHERE t.author = 'Charles Dickens' or t.author = 'Jane Austen'