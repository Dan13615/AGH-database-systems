-- 1. Select the names and addresses of all customers based in London.
select contactname, address from Customers where City='London'


-- 2. Select the names and addresses of all customers based in France or Spain. 
select contactname, address from Customers where Country='France' or Country='Spain'


-- 3. Select the names and prices of products with a unit price between 20.00 and 30.00.
select productname, unitprice from Products where UnitPrice>=20 and UnitPrice<30


-- 4. Select the names and prices of products from the ‘Meat/Poultry’ category.
select productname, unitprice, CategoryID from Products 
where (select categoryname from Categories where Categories.CategoryID=Products.CategoryID)='Meat/Poultry'


-- 5. Select the names of products and stock information for products supplied by the company ‘Tokyo Traders’
select productname, unitsinstock from Products p 
where (select companyname from Suppliers s where s.SupplierID=p.SupplierID)='Tokyo Traders'


-- 6. Select the names of products that are out of stock.
select productname from Products p 
where p.UnitsInStock=0