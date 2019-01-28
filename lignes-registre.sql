USE [library]
GO
SELECT
	[client].[nom],[registre].[date_emprunt],[registre].[date_retour],[disponibilite],[livre].[titre]
FROM
	[client]
INNER JOIN [verifier] ON [client].[id] = [verifier].[id]
INNER JOIN [registre] ON [registre].[id_registre]=[verifier].[id_registre]
INNER JOIN [livre] ON [registre].[id_registre]=[livre].[id]
ORDER BY [client].[nom]