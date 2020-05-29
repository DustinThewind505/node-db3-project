-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT p.ProductName, c.CategoryName
from Products AS p
join Categories AS c
    on p.CategoryId = c.CategoryId;


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.OrderId, s.ShipperName, o.OrderDate
from Orders AS o 
join Shippers AS s
    on o.ShipperID = s.ShipperId
where o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.ProductName, od.Quantity
from OrderDetails AS od
join Products AS p
    on od.ProductId = p.ProductId
    where od.OrderId = 10251
    order by p.ProductName;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.OrderId AS 'OrderId', c.CustomerName AS 'CompanyName', e.LastName AS 'EmployeeLastName'
from Orders AS o
join Customers AS c
	on o.CustomerId = c.CustomerId
join Employees AS e
    on o.EmployeeId = e.EmployeeId