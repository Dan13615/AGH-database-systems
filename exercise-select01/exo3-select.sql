-- 1. Search for products sold in bottles (‘bottle’).
SELECT * FROM Products p 
WHERE p.quantityperunit LIKE '%bottle%'


-- 2. Search for information about the job positions of employees whose last names start
-- with a letter in the range from B to L.
SELECT firstname, lastname, title FROM Employees e 
WHERE e.LastName LIKE '[B-L]%'


-- 3. Search for information about the job positions of employees whose last names start
-- with the letter B or L.
SELECT firstname, lastname, title FROM Employees e 
WHERE e.LastName LIKE '[BL]%'


-- 4. Find the names of categories that contain a comma in their description.
SELECT categoryname FROM Categories c 
WHERE c.Description LIKE '%,%'


-- 5. Find customers who have the word ‘Store’ somewhere in their name.
SELECT ContactName, CompanyName FROM Customers c 
WHERE c.CompanyName LIKE '%Store%'
