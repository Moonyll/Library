USE [library]
GO

DECLARE @i INT
SET @i = 1;
WHILE(@i<=40)
BEGIN
	INSERT INTO [dbo].[registre] ([disponibilite],[date_emprunt],[date_retour],[quantite]) VALUES 
	(('Oui'), CONCAT('2019-07-',@i), CONCAT('2019-08-',@i),(1));
	SET @i= @i+1;
END
