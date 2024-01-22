--STRING FUNCTIONS
Use AdventureWorks2017
Go 

Select LEFT('OAK ACADEMY 2020', 11)
Select Right('OAK ACADEMY 2020', 11)

-- Trim (spaces removed)
Select TRIM('OAK ACADEMY   ') 

Select Lower('OAK ACADEMY   ') 

Select UPPER(FIRSTNAME), UPPER(LASTNAME) from Person.Person 

Select REVERSE('OAK ACADEMY 2020')

Select REPLACE('OAK ACADEMY 2020','2020','2024')

Select SUBSTRING('OAK ACADEMY 2020',5,12)