--PROBLEM 06
--Write a SQL query to find all towns that start with letters M, K, B or E. Order them alphabetically by town name.

SELECT 
	*
	FROM Towns
	WHERE [Name] LIKE ('M%') 
			OR  [Name] LIKE('K%')
			OR  [Name]LIKE('B%')
			OR  [Name] LIKE('E%')
	ORDER BY [Name]