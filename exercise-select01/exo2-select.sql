-- exo 1
select contactname, address from Customers where City='London'

-- exo 2 
select contactname, address from Customers where Country='France' or Country='Spain'

-- exo 3
select productname, unitprice from Products where UnitPrice>=20 and UnitPrice<30

-- exo 4
select productname, unitprice, CategoryID from Products 
where (select categoryname from Categories where Categories.CategoryID=Products.CategoryID)='Meat/Poultry'

-- exo 5
select productname, unitsinstock from Products p 
where (select companyname from Suppliers s where s.SupplierID=p.SupplierID)='Tokyo Traders'


-- exo 6
select productname from Products p 
where p.UnitsInStock=0