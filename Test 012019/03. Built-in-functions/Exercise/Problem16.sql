--Problem 16
SELECT 
	Username
	,IpAddress
FROM Users
Where IpAddress like '___.1%.%.___'
ORDER BY Username