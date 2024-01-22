--RESTRICT and SORTING
--Retrieving data (Retrieve uniqe records on the person type column in the person table)
 
 Use AdventureWorks2017
 Go 

 -- 19000 rows items exist
 Select * from Person.Person 

 -- select distinct person types from 19000 rows
 Select Distinct PersonType
 from Person.Person

 -- If multiple columns are specified
 Select Distinct PersonType, FirstName from Person.Person

 -- Select Top cluase is used to fetch a top end number or X perces of records from a table (specify the number of records to return)
 Select Distinct PersonType, FirstName from Person.Person
 Select Top 20 * from Person.Person

 -- ORDER BY ascending order 
 Select FirstName, MiddleName, LastName From Person.Person Order By FirstName ASC

 -- ORDER BY ascending order 
 Select FirstName, MiddleName, LastName From Person.Person Order By FirstName DESC