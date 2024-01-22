--User management (Create logins in MsSql Server)

Create Login NewLogin With Password = '123456789Tk'

-- Rename login 
Alter Login NewLogin with Name = NewLogin2

-- Change loing password
Alter Login NewLogin2 with Password = 'Tk123456'

-- Drop login 
Drop Login NewLogin2