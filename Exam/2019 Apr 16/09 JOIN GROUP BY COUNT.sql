--PROBLEM 09
--Select luggage type and how many times was used by persons. 
--Sort by count (descending) and luggage type (ascending).

SELECT 
	lt.Type
	,COUNT(lt.Type) AS MostUsedLuggage
	FROM Passengers AS p
	JOIN Luggages AS l ON p.Id=l.PassengerId
	JOIN LuggageTypes AS lt ON lt.Id=l.LuggageTypeId
	GROUP BY lt.Type
	ORDER BY MostUsedLuggage DESC,lt.Type