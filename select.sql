Use Company
Go

/*
--First record
INSERT INTO tableEmployees
	Values(1002, 'Joseph', 44667578, 27, 3)

--Second record
INSERT INTO tableEmployees
	Values(1003, 'Jane', 44687578, 24, 2)

--Thrid record
INSERT INTO tableEmployees
	Values(1004, 'Mark', 44667577, 30, 1)

--Retrieve data from all columns 
Select * from tableEmployees


--Retrieve data from specific columns 
Select EmployeeName, Phone, Age 
from tableEmployees


--Apply column ALIAS
Select EmployeeName AS 'EMPLOYEE NAME', Phone AS PHONE, Age 
from tableEmployees


--Table ALIAS (present all columns in a table as list)
Select Employee.EmployeeName, Employee.Phone,Employee.Age 
from tableEmployees as Employee
*/

