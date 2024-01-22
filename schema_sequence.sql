--SCHEMA 
--SEQUENCE: an object in a SQL server that is used to generate a number sequence 
-- ex. used to creae numbers that act as primary keys 

-- Create Sequence 
Create Sequence SequenceObject -- see inside programability >> Sequences
Start With 1 
Increment By 1

--Next Sequence Value 
Select Next Value for SequenceObject

--Sequence current value 
Select current_value from sys.sequences
Where name = 'SequenceObject'

--Restart Sequence 
Alter Sequence SequenceObject 
Restart with 1

Insert into HumanResources.Departments
Values(
	Next Value for SequenceObject, 'S'
)

Insert into HumanResources.Departments
Values(
	Next Value for SequenceObject, 'P'
)

Insert into HumanResources.Departments
Values(
	Next Value for SequenceObject, 'K'
)

--Decrement sequence 
Create Sequence DecSequence
As INT 
Start with 100 
Increment by -1

Select next value for DecSequence


--MinMax sequence 
Create Sequence MinMaxSequence
Start with 100 
Increment by 20
MinValue 100
MaxValue 200

Alter Sequence MinMaxSequence
Increment by 20
MinValue 100
MaxValue 200
Cycle -- retart from starting point

Select next value for MinMaxSequence

--Drop sequence (cache)
Drop Sequence MinMaxSequence
Drop Sequence DecSequence
