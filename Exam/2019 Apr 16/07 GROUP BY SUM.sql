--PROBLEM 07

SELECT 
	FlightId
	,SUM(Price) AS [TOTAL PRICE]
	FROM Tickets
	GROUP BY FlightId
	ORDER BY [TOTAL PRICE] DESC,FlightId
