--PROBLEM 16 
--Find all users along with their IP addresses sorted by username alphabetically.
-- Display only rows that IP address matches the pattern: “***.1^.^.***”. 
--Legend: * - one symbol, ^ - one or more symbols

SELECT 
	Username
	,IpAddress
	FROM [Users]
	WHERE IpAddress LIKE '___.1%.%%.___'
	ORDER BY Username