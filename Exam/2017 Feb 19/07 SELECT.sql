SELECT TOP 15
	I.[Name]
	,I.[Description]
	,C.Name	AS 'CountryName'
	FROM Ingredients AS i
	LEFT JOIN Countries AS C ON I.OriginCountryId=C.Id
	WHERE C.[Name] IN ('Bulgaria ','Greece')
	ORDER BY I.[Name],C.[Name]