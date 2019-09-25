--PROBLEM 07
--Write a SQL query to find all towns that does not start with letters R, B or D. Order them alphabetically by name. 

SELECT 
	*
	FROM Towns
	WHERE  [Name] NOT LIKE'R%'
		AND [Name] NOT LIKE'B%'
		AND [Name] NOT LIKE'D%'
	ORDER BY [NAME]
