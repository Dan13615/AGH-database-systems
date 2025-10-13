-- 1. Write a query that calculates the value of each order item for order number 10250.

SELECT SUM(unitprice) FROM [Order Details] od 
WHERE od.OrderID = 10250


-- 2. Write a query that shows a single column for each supplier containing the phone
-- number and fax number in the format:the phone and fax numbers should be separated
-- by a comm

SELECT supplierid, companyname, contactname, phone + ',' + fax
AS phoneAndfax
FROM Suppliers s