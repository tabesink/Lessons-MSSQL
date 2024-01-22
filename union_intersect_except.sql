-- Set operators are used to combine the same type of data from 2 or more tables 
-- The results sets of all queries must have the same number of columns
-- datatype need to match
Use AdventureWorks2017
Go

--UNION (combines results into a single set w/o duplicates)
Select CurrencyCode  -- 109 rows
from Sales.CountryRegionCurrency
Union 
Select CurrencyCode --105 rows
from Sales.Currency

--UNION ALL (combines results into a single set w duplicates)
Select CurrencyCode  -- 109 rows
from Sales.CountryRegionCurrency
Union All
Select CurrencyCode --105 rows
from Sales.Currency

--INTERSECT (Returns only common rows returned by the 2 select statements)
--Find job titles for positiions held by both males and females
Select JobTitle 
from HumanResources.Employee
Where Gender = 'M' -- job titles for males (206)
Intersect -- 26 jobs
Select JobTitle 
from HumanResources.Employee
Where Gender = 'F' -- job titles for males (84)

--EXCEPT
Select JobTitle 
from HumanResources.Employee
Where Gender = 'M' -- job titles for males (206)
Except-- 26 jobs
Select JobTitle 
from HumanResources.Employee
Where Gender = 'F' -- job titles for males (84)
