--PROBLEM 02
--Write a query that selects:
--•	FirstName
--•	LastName
--•	Town
--•	AddressText
--Sorted by FirstName in ascending order then by LastName. Select first 50 employees.

SELECT TOP 50
	e.FirstName
	,e.LastName
	,t.Name
	,a.AddressText
	FROM Employees AS e
	JOIN Addresses AS a ON a.AddressID=e.AddressID
	JOIN Towns AS t ON a.TownID=T.TownID
	ORDER BY E.FirstName ,e.LastName