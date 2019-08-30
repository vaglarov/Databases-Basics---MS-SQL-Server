--Problem 07
SELECT [TownID],
       [Name]
FROM Towns
WHERE [Name] LIKE '[^rbd]%'
ORDER BY [Name];