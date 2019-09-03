--Problem 05
SELECT 
	[Name]
FROM Towns
WHERE LEN([Name]) IN (5,6)
ORDER BY [NAME]