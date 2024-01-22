---SCHEMA  VIEW  SEQUENCE 
-- SCHEMA is a collection of database objects (tables , views, triggers, indicies)
-- associated with a schema owner (a username)
-- SCHEMA always belongs to one database; a database may have one or multiple schemas

-- SCHEMA is a collection of database objects that can be assigned permission

Use AdventureWorks2017
Go
--Create SCHEMA
Create Schema TestSchema 
Authorization Test_User -- Created in the database Security >> Users 

--Create a table in Schema 
Create Table TestSchema.Departments
(
	ID int Not Null,
	DepartmentName varchar Not Null
)

--Change Schema of a table 
Create Schema NewSchema 
Alter Schema NewSchema
Transfer TestSchema.Departments

--Drop Schema
Drop Schema NewSchema -- cannot drop with tables in it; so transfer tables first 

--VIEW (a virtual table based on the results of an SQL statement)
--Create view 
Create View VPersonWithMailAddress As 
Select FirstName, LastName, EmailAddress 
from Person.Person As P
join Person.EmailAddress As E
On P.BusinessEntityID = E.BusinessEntityID

Select* from VPersonWithMailAddress

--DROP View 
Drop View VPersonWithMailAddress