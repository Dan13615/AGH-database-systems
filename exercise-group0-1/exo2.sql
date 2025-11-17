--1. Provide the maximum price of an ordered product for each order.

SELECT OrderID, MAX(UnitPrice) AS HighestPrice
FROM [Order Details] od 
GROUP BY od.OrderID 


--2. Sort the orders by the maximum product price.

SELECT OrderId FROM [Order Details] od 
GROUP BY od.OrderID 
ORDER BY MAX(od.UnitPrice) DESC


--3. Provide the maximum and minimum price of an ordered product for each order.

SELECT OrderId, MIN(UnitPrice), MAX(UnitPrice) FROM [Order details] od
GROUP BY od.OrderID 

--4. Provide the number of orders delivered by each shipper.

SELECT s.CompanyName, COUNT(o.OrderID) AS NombreDeCommandes
FROM Orders AS o
JOIN Shippers AS s ON o.ShipVia = s.ShipperID
GROUP BY s.CompanyName


--5. Which shipper was the most active in 1997?

SELECT TOP 1 s.CompanyName, COUNT(o.OrderID) AS NombreDeCommandes
FROM Orders AS o
JOIN Shippers AS s ON o.ShipVia = s.ShipperID
WHERE o.OrderDate BETWEEN '1996-12-31' AND '1998-01-01'
GROUP BY s.CompanyName


