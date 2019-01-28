USE [library]
GO

DECLARE @i INT
SET @i = 1;
WHILE(@i<=40)
BEGIN
	INSERT INTO [dbo].[verifier] ([id_registre],[id]) VALUES 
	((@i),(1));
	SET @i= @i+1;
END
