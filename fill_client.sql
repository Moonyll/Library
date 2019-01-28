USE [library]
GO

DECLARE @i INT
SET @i = 1;
WHILE(@i<=25)
BEGIN
	INSERT INTO [dbo].[client] ([nom],[prenom],[date_de_naissance],[email]) VALUES 
	(CONCAT('Smith',@i), CONCAT('Will',@i),CONCAT('1975-09-',@i),CONCAT('Smith',@i,'@gmail.com'));
	SET @i= @i+1;
END
