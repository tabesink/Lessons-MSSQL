Use Company
Go

-- Insert data
Insert Into tableEmployees
(EmployeeID, EmployeeName, Phone, Age, DepID)
Values(1005, 'Steve', 44889834, 21, 1)

-- Insert data (w/o enerting columns)
Insert Into tableEmployees
Values(1001, 'Jane', 44889835, 25, 3)

--Update data with query
Update tableEmployees
set EmployeeName='Eric',Phone=56875599
Where EmployeeID=1001

--Delete data 
Delete tableEmployees
Where EmployeeID=1001