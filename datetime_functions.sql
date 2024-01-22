Select DAY('2020-01-20')
Select MONTH('2020-01-20')
Select YEAR('2020-01-20')

Select DATEPART(Minute, '2020-01-20 04:55:12') -- returns integer

Select DATENAME(q, '2020-01-20 04:55:12') -- reurns string

Select DATEADD(DAY, 5, '2020-01-20')

Select DATEDIFF(DAY, '2020-01-20', '2001-05-20')

Select DATEDIFF(Year, '2020-01-20', GETDATE())

-- Datetime conversion
Select 
	CONVERT(varchar, GETDATE(),0) as 'Format-0',
	CONVERT(varchar, GETDATE(),9) as 'Format-9',
	CONVERT(varchar, GETDATE(),13) as 'Format-13'