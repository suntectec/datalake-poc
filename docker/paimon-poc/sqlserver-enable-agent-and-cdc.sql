-- agent set by starting sqlserver

-- ====
-- Enable Database for CDC
-- ====
USE test
GO
EXEC sys.sp_cdc_enable_db
GO

-- Enable CDC for a table specifying filegroup
USE test
GO

EXEC sys.sp_cdc_enable_table
     @source_schema = N'dbo',
     @source_name   = N'users',
     @role_name     = NULL
GO
