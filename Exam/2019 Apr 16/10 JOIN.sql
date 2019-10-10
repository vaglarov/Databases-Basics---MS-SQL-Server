--PROBLEM 10
--Select the full name of the passengers with their trips (origin - destination). 
--Order them by full name (ascending), origin (ascending) and destination (ascending).

SELECT 
	P.FirstName+' '+LastName AS [Full Name]
	,f.Origin
	,f.Destination
	FROM Passengers AS p
	JOIN Tickets AS t ON p.Id=T.PassengerId
	JOIN Flights AS f ON f.Id=t.FlightId
	ORDER BY [Full Name],f.Origin,f.Destination