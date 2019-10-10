--PROBLEM 14

--Select all passengers who have trips.
-- Select their full name (first name – last name), plane name,
-- trip (in format {origin} - {destination}) and luggage type. 
-- Order the results by full name (ascending), name (ascending), 
-- origin (ascending), destination (ascending) and luggage type (ascending).

SELECT 
	p.FirstName+' '+LastName AS [Full Name]
	, plane.Name
	,f.Origin+' - '+F.Destination AS [Trip]
	,lt.Type
	FROM Passengers AS p
	INNER JOIN Tickets AS t ON p.Id=t.PassengerId
	JOIN Flights AS f ON t.FlightId=f.Id
	JOIN Planes AS plane ON plane.Id=f.PlaneId
	JOIN Luggages AS l ON t.LuggageId=l.Id
	JOIN LuggageTypes AS lt ON l.LuggageTypeId=lt.Id
	ORDER BY [Full Name],plane.Name,F.Origin,F.Destination,LT.Type
