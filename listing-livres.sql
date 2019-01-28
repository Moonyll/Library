USE [library]
GO
SELECT
	[livre].[titre],[livre].[nom_auteur],[livre].[prenom_auteur],[registre].[date_emprunt],[registre].[date_retour],[disponibilite]
FROM
	[client]
INNER JOIN [verifier] ON [client].[id] = [verifier].[id]
INNER JOIN [registre] ON [registre].[id_registre]=[verifier].[id_registre]
INNER JOIN [livre] ON [registre].[id_registre]=[livre].[id]
ORDER BY [livre].[titre]