-- Exercise 1

SELECT * FROM Products p 
WHERE p.UnitPrice < 10 or p.UnitPrice > 20

-- Exercise 2

SELECT * FROM Orders o 
WHERE o.OrderDate >= '1997-01-01' and o.OrderDate < '1998-01-01'

-- Exercise 3

SELECT * FROM Orders o 
WHERE o.OrderDate >= '1997-01-01' and o.OrderDate < '1999-01-01'


