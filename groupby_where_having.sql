Use AdventureWorks2017
Go

-- GROUP BY
-- Get total number of products on shelf column
Select Shelf, sum(Quantity) As Quantity, sum(Bin) as Bin -- mulitiple aggregation functions can be used in a query 
from Production.ProductInventory
Group By Shelf Order By Shelf

-- HAVING
-- enable filtering of which group results appear within the final results 
Select Shelf, sum(Quantity) As Quantity, sum(Bin) as Bin -- mulitiple aggregation functions can be used in a query 
from Production.ProductInventory
Group By Shelf Having Shelf='A' Order By Shelf -- <-- aggregate function

-- WHERE
-- enable filtering of which group results appear within the final results 
Select Shelf, sum(Quantity) As Quantity, sum(Bin) as Bin -- mulitiple aggregation functions can be used in a query 
from Production.ProductInventory
Where Shelf='A' 
Group By Shelf

/*Whats the difference between Where and Having?
Where clause if processed after from clause in a logical order of query processing; Where will use an index
Having clause is processed after groups are created; Having will not use index

When to use Where vs. Having
if filtering can be done w.o aggregate function, then do it to improve performance (perform counting and sorting on a smaller set size). 
*/