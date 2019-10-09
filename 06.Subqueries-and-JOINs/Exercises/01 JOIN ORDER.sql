--PROBLEM 01 
--Write a query that selects:
--•	EmployeeId
--•	JobTitle
--•	AddressId
--•	AddressText
--Return the first 5 rows sorted by AddressId in ascending order.

SELECT TOP 5
	E.EmployeeID
	,E.JobTitle
	,E.AddressID
	,A.AddressText
	FROM Employees AS E
	JOIN Addresses  AS A ON A.AddressID=E.AddressID
	ORDER BY AddressID
