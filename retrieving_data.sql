--Retreveing data 
--Where Clause (filter records and fetch only the req. records)
Use AdventureWorks2017
Go

Select * 
From Person.Person
Where FirstName = 'Terri'

--SQL Operators (reserve word/char used in SQL statements where clause to perform operations such as COMPARISON & ARITHMATIC)

Select * 
From Person.Person
Where BusinessEntityID <> 5 --not equal operator

--SQL logical ops (AND OR BETWEEN IN EXIST)
Select * 
From Person.Person
Where FirstName = 'Dylan' and LastName='Miller'

Select * 
From Person.Person
Where BusinessEntityID between 1 and 5

Select * 
From Person.Person
Where BusinessEntityID in (1,2,5)
