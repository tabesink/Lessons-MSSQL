--CASE FUNCTION (IF THEN ELSE)
-- Case expression evalutes a list of conditions and returns one of the multiple specfied results
-- Case clasuse can be used in any clause that accepts SELECT GROUPBY WHERE HAVING

Use Company
Go 

Select DepID, DepartmentName, 
	Case DepartmentName
		When 'IT' Then 'INFORMATION TECHNOLOGY'
		When 'HR' Then 'HUMAN RESOURCES'
		When 'ENG' Then 'ENGINEERING'
		Else 'ACCOUNTING'
	END As 'Department Long Name'
from tableDepartments