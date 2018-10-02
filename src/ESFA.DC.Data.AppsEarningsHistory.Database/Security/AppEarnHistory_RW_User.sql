CREATE USER [AppEarnHistory_RW_User]
    WITH PASSWORD = N'$(RWUserPassword)';
GO
GRANT CONNECT TO [AppEarnHistory_RW_User]
GO


