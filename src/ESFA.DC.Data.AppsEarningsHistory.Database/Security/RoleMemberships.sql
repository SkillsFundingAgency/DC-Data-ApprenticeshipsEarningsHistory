
GO
ALTER ROLE [db_datawriter] ADD MEMBER [AppsEarningsHistory_RW_User];
GO
ALTER ROLE [db_datareader] ADD MEMBER [AppsEarningsHistory_RW_User];
GO
ALTER ROLE [db_datareader] ADD MEMBER [AppsEarningsHistory_RO_User];
