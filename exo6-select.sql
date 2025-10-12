-- Exercise 1

SELECT contactname, country FROM Customers c 
ORDER BY c.Country, c.CompanyName 

-- Exercise 2

SELECT contactname, country FROM Customers c 
WHERE c.Country = 'France' or c.Country = 'Spain'
ORDER BY c.Country, c.CompanyName 

-- Exercise 3

SELECT * FROM Orders o
WHERE o.OrderDate LIKE '%1997%'
ORDER BY o.OrderDate desc, o.Freight asc