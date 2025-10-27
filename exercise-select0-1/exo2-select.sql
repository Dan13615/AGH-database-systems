-- 1. Select the names and addresses of all customers based in London.
SELECT contactname, address, country, city FROM Customers c 
WHERE c.City='London'


-- 2. Select the names and addresses of all customers based in France or Spain. 
SELECT contactname, address, country, city FROM Customers c 
WHERE c.Country IN ('France', 'Spain')


-- 3. Select the names and prices of products with a unit price between 20.00 and 30.00.
SELECT productname, unitprice FROM Products p
WHERE p.UnitPrice >= 20 AND p.UnitPrice < 30


-- 4. Select the names and prices of products from the ‘Meat/Poultry’ category.
SELECT productname, unitprice FROM Products p
WHERE (SELECT categoryname FROM Categories c WHERE c.CategoryID = p.CategoryID) = 'Meat/Poultry'


-- 5. Select the names of products and stock information for products supplied by the company ‘Tokyo Traders’
SELECT productname, unitsinstock FROM Products p 
WHERE (SELECT companyname FROM Suppliers s WHERE s.SupplierID = p.SupplierID) = 'Tokyo Traders'


-- 6. Select the names of products that are out of stock.
SELECT productname FROM Products p 
WHERE p.UnitsInStock = 0
