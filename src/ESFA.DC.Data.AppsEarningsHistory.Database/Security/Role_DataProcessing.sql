﻿
CREATE ROLE [DataProcessing] AUTHORIZATION [dbo]
GO

-- Grant access rights to a specific schema in the database
GRANT 
	DELETE, 
	EXECUTE, 
	INSERT, 
	REFERENCES, 
	SELECT, 
	UPDATE, 
	VIEW DEFINITION 
ON SCHEMA::[dbo]
	TO [DataProcessing]
GO
