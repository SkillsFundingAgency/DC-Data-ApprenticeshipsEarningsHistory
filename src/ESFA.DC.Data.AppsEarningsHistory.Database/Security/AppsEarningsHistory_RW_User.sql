CREATE USER [AppsEarningsHistory_RW_User]
    WITH PASSWORD = N'$(RWUserPassword)';
GO
	GRANT CONNECT TO [AppsEarningsHistory_RW_User]
GO


