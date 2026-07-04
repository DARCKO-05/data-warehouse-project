/*
====================================================================
Create Database and Schemas
====================================================================
Script purpose:
   This script creates a Database and if it already exists it is dropped and recreated, also the 
   script set up three schemas within the Database bronze ,silver and gold.

WARNING:
   Running this will drop\delete the whole 'DataWarehouse' Database if it exists.
   All data in the database will be permanently erased. you are warned make sure you have 
   a backup before running this scripts.
*/

-- Create DAtabase 'DataWarehouse'
USE master;
GO

IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
