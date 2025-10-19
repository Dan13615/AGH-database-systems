use library
-- Exercise 2
-- 1. Write a query that selects the book number and title for all books whose titles contain the
-- word 'adventure'

SELECT title_no, title FROM Title t
WHERE t.title LIKE '%adventure%'

-- 2. Write a query that selects the member_no and the fine paid for all books that were returned in
-- November 2001.

SELECT member_no, fine_paid FROM Loanhist ll
WHERE ll.in_date >= '2001-11-01' AND ll.in_date < '2001-12-01'

-- 3. Write a query that selects all unique pairs of cities and states from the adult table.

SELECT DISTINCT city, state
FROM Adult

-- 4. Write a query that selects all titles from the title table and displays them in alphabetical
-- order.

SELECT title FROM Title t
ORDER BY t.title