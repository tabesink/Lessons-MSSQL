-- Retrive data from multiple tables 
--INNER JOIN LEFT JOIN RIGHT JOIN FULL JOIN SELF JOIN
/*
Use Company
Go

--INNER JOIN (creates new result table by combining column values of two different tables; join op performed based on join predecate)
Select EmployeeID, EmployeeName, DepartmentName
from tableEmployees, tableDepartments

-- Join will join horizontally
Select EmployeeID, EmployeeName, DepartmentName
from tableEmployees
JOIN tableDepartments
On tableEmployees.DepID=tableDepartments.DepId
*/

Use AdventureWorks2017
Go

Select FirstName, LastName, EmailAddress from Person.Person
JOIN Person.EmailAddress
On Person.BusinessEntityID=EmailAddress.BusinessEntityID

--LEFT (OUTER) JOIN
-- returns all the values from the left table, plus matched values from the right table or null in the case of non matching predecates
Select Name, SalesOrderDetailID 
from Production.Product
Left Join Sales.SalesOrderDetail
On Product.ProductID=SalesOrderDetail.ProductID

Select Name, SalesOrderDetailID 
from Production.Product as p
Left Join Sales.SalesOrderDetail as s
On p.ProductID=s.ProductID
Where SalesOrderDetailID is Null


--RIGHT (OUTER) JOIN
-- returns all records from the right table, even if there are no matches from the left table 
Select Name, SalesOrderDetailID 
from Production.Product as p
Right Outer Join Sales.SalesOrderDetail as s
On p.ProductID=s.ProductID

--FULL JOIN
-- Returns all records where there is a match in table one which is on the left table or right table
Select Name, SalesOrderDetailID 
from Production.Product as p
Full Join Sales.SalesOrderDetail as s
On p.ProductID=s.ProductID

--SELF JOIN (a table is joining with it self as it were two tables; table should be renamed to avoid confusion)
--Find products with the same list price
Select P1.Name, P2.Name, P1.ListPrice
from Production.Product P1
Join Production.Product P2
On P1.ListPrice = P2.ListPrice
	And P1.ListPrice <> 0 -- Exclude products with no price 
	And P1.Name <> P2.Name -- Exlude the same product 
Order by ListPrice
