-- 1. Select the names and countries of all customers, sort the results by country, and
-- within each country, sort the company names alphabetically.

SELECT contactname, country FROM Customers c 
ORDER BY c.Country, c.CompanyName 


-- 2. Select the names and countries of all customers based in France or Spain, sort the
-- results by country, and within each country, sort the company names alphabetically.

SELECT contactname, country FROM Customers c 
WHERE c.Country IN ('France', 'Spain')
ORDER BY c.Country, c.CompanyName 


-- 3. Select the orders placed in 1997. Sort the results in descending order by month
-- number, and within each month, sort in ascending order by shipping cost.

SELECT * FROM Orders o
WHERE o.OrderDate LIKE '%1997%'
ORDER BY o.OrderDate desc, o.Freight asc