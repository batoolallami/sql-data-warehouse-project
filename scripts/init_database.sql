USE master;
GO

-- Drop and recreate the 'datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'datawarehouse')
BEGIN
  ALTER DATABASE datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE datewarehouse;
