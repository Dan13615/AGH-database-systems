-- 1. Select products with prices less than 10 or greater than 20.
SELECT * FROM Products p 
WHERE p.UnitPrice < 10 or p.UnitPrice > 20


-- 2. Select orders placed in the year 1997.
SELECT * FROM Orders o 
WHERE o.OrderDate >= '1997-01-01' and o.OrderDate < '1998-01-01'


-- 3. Select orders placed between the years 1997 and 1998.
SELECT * FROM Orders o 
WHERE o.OrderDate >= '1997-01-01' and o.OrderDate < '1999-01-01'

