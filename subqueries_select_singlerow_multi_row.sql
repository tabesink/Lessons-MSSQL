--SUBQUERIES are embedded within the WHERE clause (SELECT, SINGLE ROW, MULTI ROW, INSERT, UPDATE, DELETE) 
Use AdventureWorks2017
Go

--How many cable lock has been sold
--subquery
Select COUNT(*) from Sales.SalesOrderDetail
Where ProductID = (
Select ProductID from Production.Product 
where Name = 'Cable Lock')

-- SINGLE ROW SUBQUERIES (used whtn the outer queries results are based on a single unknown value)
-- Which product have not been ordered yet?
Select * from Production.Product
Where ProductID NOT IN
	(Select ProductID from Sales.SalesOrderDetail)

-- CORRELATED SUBQUERIES (a.k.a REPEATING SUBQUERY; uses the values of the outer query)
-- Which product have not been ordered yet?
Select * from Production.Product as P
Where NOT Exists
	(Select ProductID from Sales.SalesOrderDetail as S
	Where P.ProductID = S.ProductID)