-- Write a select statement to choose the order number, order date, and customer
-- number for all pending orders, where the recipient’s country is Argentina

SELECT orderid, orderdate, customerid, shippedDate
FROM Orders o 
WHERE o.ShipCountry = 'Argentina' AND o.ShippedDate IS NULL