--PROBLEM 05
--Write a SQL query to find town names that are 5 or 6 symbols long and order them alphabetically by town name. 

SELECT 
	[Name]
	FROM Towns
	WHERE LEN([Name])=5 OR LEN([Name])=6
	ORDER BY [Name]