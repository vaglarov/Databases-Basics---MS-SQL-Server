--Problem 02
SELECT TOP 50
	FirstName
	,LastName
	,t.[Name]
	,a.AddressText
 FROM Employees As e
 JOIN Addresses AS a ON e.AddressID=a.AddressID
 JOIN Towns AS t ON a.TownID=t.TownID
 ORDER BY 
	FirstName 
	,LastName

