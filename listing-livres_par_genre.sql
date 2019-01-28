USE [library]
GO
SELECT
	[genre].[genre],COUNT([livre].[titre]) AS NB_LIVRES
FROM
	[livre]
INNER JOIN [associer] ON [livre].[id] = [associer].[id_livre]
INNER JOIN [genre] ON [associer].[id]=[genre].[id]
GROUP BY [genre].[genre]