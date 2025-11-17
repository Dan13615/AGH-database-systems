use Northwind
--1. Provide the number of products with prices less than 10 or greater than 20.

SELECT COUNT(*) FROM Products p 
WHERE p.UnitPrice < 10 OR p.UnitPrice > 20


--2. Provide the maximum product price for products priced below 20.

SELECT MAX(unitprice) FROM Products p
WHERE p.UnitPrice < 20

-- OR

SELECT TOP 1 WITH TIES UnitPrice, ProductName FROM Products p
WHERE p.UnitPrice < 18.3
ORDER BY p.UnitPrice desc


--3. Provide the maximum, minimum, and average price for products sold in bottles.

SELECT MIN(unitprice), MAX(unitprice), AVG(unitprice) FROM Products p
WHERE p.Quantityperunit LIKE '%bottle%'


--4. List information about all products priced above the average.

SELECT * FROM Products p 
WHERE p.UnitPrice > (SELECT AVG(UnitPrice) FROM Products p2)


--5. Provide the total value of the order with order number 10250.

SELECT ROUND(SUM(UnitPrice * Quantity * (1 - Discount)), 2) AS TotalValue 
FROM [Order Details] od 
WHERE od.OrderID = 10250

