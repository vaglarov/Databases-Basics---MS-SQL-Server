-- Problem 07
SELECT 
	TownID
	,[Name]
FROM Towns
WHERE[NAME]NOT LIKE '[rbd]%'
--WHERE [Name] LIKE '[^rbd]%'
ORDER BY [Name]