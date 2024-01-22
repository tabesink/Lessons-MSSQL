Use Company 
Go

-- Create table 
Create Table tableEmployees(
	EmployeeID int Primary Key Not Null,
	EmployeeName varchar(50) Not Null,
	Phone int Not Null,
	DepID int Not Null,
)

-- Change name of table 
EXEC sp_rename 'tableEmployees', 'Employees'

Drop Table Employees

--Create table with default constraint
Create Table tableEmployees(
	EmployeeID int Primary Key Not Null,
	EmployeeName varchar(50) Not Null,
	Phone int Not Null,
	DepID int Not Null,
	Salary Decimal (10,2) Default 3000.00
)


--Create table with freign key
Create Table tableEmployees(
	EmployeeID int Primary Key Not Null,
	EmployeeName varchar(50) Not Null,
	Phone int Not Null,
	DepID int FOREIGN KEY references tableDepartments(DepID) Not Null,
)


--Unique constraint 
Alter Table tableEmployees
Add constraint U_Phone 
Unique(Phone)


--Check constraint 
Create Table tableEmployees(
	EmployeeID int Primary Key Not Null,
	EmployeeName varchar(50) Not Null,
	Phone int Not Null,
	Age int Not Null CHECK(Age >=18),
	DepID int FOREIGN KEY references tableDepartments(DepID) Not Null,
)

-- Alter/drop constraints
Alter Table tableEmployees
Add Constraint CHK_EmployeeAge
CHECK(Age>=18)

Alter Table tableEmployees
Drop Constraint CHK_EmployeeAge