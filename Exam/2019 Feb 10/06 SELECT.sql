--PROBLEM 06
--Extract from the database, all colonists. Sort the results by first name, them by last name, 
--and finally by id in ascending order.
--Required Columns
--•	Id
--•	FullName
--•	Ucn

SELECT 
	Id
	,FirstName+' '+LastName AS [Full Name]
	,Ucn
	FROM Colonists
	ORDER BY FirstName,LastName