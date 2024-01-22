--WILDCARD OPERATIONS (used to search for data within a table)
-- LIKE operator is used in the WHERE clause of the SELECT UPDATE and DELETE statements to filter rows based on pattern matching

Use AdventureWorks2017
Go


-- PERCENT WILDCARD: % (represents 0, 1, or multiple characters)
-- Find any value that statrs with letter "a"
Select * from Person.Person Where FirstName like 'ang%'

-- Find any value that ends with letter 'a'
Select * from Person.Person Where FirstName like '%inda'

-- Find any value that has letter 'a' in any position
Select * from Person.Person Where FirstName like '%inda%'

-- Find any value that has letter 'a' in any position
Select * from Person.Person Where FirstName like '%inda%'


-- UNDERSCORE WILDCARD: _ (represents a single character)
-- Find names that have 5 letters that end with the string
Select * from Person.Person Where FirstName like '_inda'

-- Find names that have 6 letters that end with the string
Select * from Person.Person Where FirstName like '__inda'

-- Find names matching pattern
Select * from Person.Person Where FirstName like 'D_v__'


-- CHA WILDCARD: gets any single character within a short list; ex. find any value that starts with letter x, letter y or letter z
-- Find first names starting with 'a', 'b' or 'c'
Select * from Person.Person Where FirstName like '[abc]%'

-- Find first names starting with 'a', 'b' or 'c'
Select * from Person.Person Where FirstName like '[a-c]%'


-- NOT LIKE
-- Find first names that don't have letter'a'
Select * from Person.Person Where FirstName Not like '%a%'