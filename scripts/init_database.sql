use master

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;

create database DataWarehouse

use DataWarehouse;
go

create schema bronze;
go

create schema silver;
go

create schema gold;
go

