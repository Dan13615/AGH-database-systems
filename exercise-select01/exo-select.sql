use northwind
-- example
select lastname, firstname, title, employeeid from Employees

-- 1. Select the names and addresses of all customers
select contactname, address, country, city from Customers c


-- 2. Select the last names and phone numbers of employees
select lastname, homephone from Employees e


-- 3. Select the names and prices of products
select productname, unitprice from Products p


-- 4. Show all product categories (names and descriptions)
select categoryname, description from Categories c


-- 5. Show the names and website addresses of suppliers
select companyname, homepage from Suppliers s