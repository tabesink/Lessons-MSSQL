-- CONVERSION FUNCTIONS (CONVERT CAST)
-- covert data of any type to specified data type

--CONVERT and CAST
Use AdventureWorks2017
Go


Select Convert(int,5.45)

Select Convert(varchar, 5.45)

Select Convert(datetime, '2020-01-07') as TextToDateTime

Select Cast(5.45 as int)

Select Cast('2020-01-07' as datetime)  as TextToDateTimeWCast

Select FirstName, LastName, ModifiedDate, 
	Cast(ModifiedDate as varchar(7)) DateToText
from Person.Person

Select FirstName, LastName, ModifiedDate, 
	Cast(ModifiedDate as varchar(11)) DateToText
from Person.Person

Select FirstName, LastName, ModifiedDate, 
	Convert(varchar(11), ModifiedDate) DateToText
from Person.Person