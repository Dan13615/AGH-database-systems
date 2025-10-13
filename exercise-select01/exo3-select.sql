-- Exercise 1

SELECT * FROM Products p WHERE p.quantityperunit LIKE '%bottle%'

-- Exercise 2

SELECT firstname, lastname, title FROM Employees e WHERE e.LastName LIKE '[B-L]%'

-- Exercise 3

SELECT firstname, lastname, title FROM Employees e WHERE e.LastName LIKE '[BL]%'

-- Exercise 4

SELECT categoryname FROM Categories c WHERE c.Description LIKE '%,%'

-- Exercise 5

SELECT ContactName, CompanyName FROM Customers c 
WHERE c.CompanyName LIKE '%Store%'
