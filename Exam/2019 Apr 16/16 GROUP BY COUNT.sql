--PROBLEM 16
--Select all destinations and trips count to them.
-- Sort the result by trips count (descending) and destination name (ascending).

SELECT 
	f.Destination
	,COUNT(t.Id) AS [Count]
	FROM Flights AS f
	LEFT JOIN Tickets AS t ON f.Id=t.FlightId
	GROUP BY f.Destination
	ORDER BY [Count] DESC,f.Destination

