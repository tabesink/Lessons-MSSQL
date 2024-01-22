--SUBQUERIES are embedded within the WHERE clause (INSERT, UPDATE, DELETE) 
Use AdventureWorks2017
Go

-- CREATE table 
Create Table Person.StateProvinceTest(
	StateProvinceCode nchar(3) Not Null,
	CountryRegionCode nvarchar(3) Not Null, 
	IsOnlyStateProvinceFlag bit Not Null,
	Name nvarchar(50) Not Null, 
	TerritoryID int Not Null,
	ModifiedDate Datetime Not Null
)

--INSERT data with subqueries
Insert Into Person.StateProvinceTest
	Select StateProvinceCode,
		CountryRegionCode,
		IsOnlyStateProvinceFlag,
		Name, 
		TerritoryID,
		ModifiedDate
	from Person.StateProvince

Select * from Person.StateProvinceTest


--UDPATE data with subqueries
Update Person.StateProvinceTest
Set TerritoryID = 99
Where CountryRegionCode IN
	(Select CountryRegionCode from Person.StateProvince
	Where CountryRegionCode = 'CA')

Select * from Person.StateProvinceTest


--DELETE data with subqueries
Delete Person.StateProvinceTest
Where CountryRegionCode IN 
	(Select CountryRegionCode from Person.StateProvince
	Where CountryRegionCode = 'CA')

Select * from Person.StateProvinceTest
