USE [library]
GO

DECLARE @i INT
SET @i = 1;
WHILE(@i<=70)
BEGIN
	INSERT INTO [dbo].[associer] ([id],[id_livre]) VALUES 
	((1),(@i));
	SET @i= @i+1;
END
