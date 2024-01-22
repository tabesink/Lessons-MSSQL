-- TRANSACTIONS (ROLLBACK  COMMIT  SAVEPOINT)
-- units or work that are performed against the database
Use AdventureWorks2017
Go

-- ROLLBACK - transaction command (only used with Select update delete commands) to undo transaction that have not been saved to the database
Begin Tran --Begin transaction
Update Person.Person
Set FirstName = 'Terri' where BusinessEntityID=2

Rollback -- undoes transaction

Select * from Person.Person

-- Being transaction
Begin Tran 
Update Person.Person
Set FirstName = 'Tom' where BusinessEntityID = 2
save Tran SaveFirstName 
Update Person.Person
Set MiddleName = 'Z' where BusinessEntityID = 2
save Tran SaveMiddleName 
Update Person.Person
Set LastName = 'Walker' where BusinessEntityID = 2
save Tran SaveLastName 

Rollback Tran SaveMiddleName
Commit

Select * from Person.Person