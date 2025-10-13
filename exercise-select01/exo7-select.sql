-- Exercise 1
SELECT SUM(unitprice) FROM [Order Details] od 
WHERE od.OrderID = 10250

-- Exercise 2
SELECT supplierid, companyname, contactname, phone + ',' + fax
as phoneAndfax
FROM Suppliers s