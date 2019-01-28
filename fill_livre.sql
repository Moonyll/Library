USE [library]
GO

DECLARE @i INT
SET @i = 1;
WHILE(@i<=70)
BEGIN
	INSERT INTO [dbo].[livre] ([titre], [nom_auteur], [prenom_auteur]) VALUES 
	(CONCAT('Le Mythe de Cthulhu Vol N°',@i), CONCAT(' Lovecraft',@i), CONCAT('Howard Phillips',@i));
	SET @i= @i+1;
END
