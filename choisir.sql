USE [library]
GO

DECLARE @i INT
SET @i = 1;
WHILE(@i<=25)
BEGIN
	INSERT INTO [dbo].[choisir] ([id],[id_client]) VALUES 
	((1),(@i));
	SET @i= @i+1;
END
