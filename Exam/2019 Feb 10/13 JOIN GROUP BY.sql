--PROBLEM 13
--Extract from the database all planets’ names and their journeys count.
-- Order the results by journeys count, descending and by planet name ascending.
--Required Columns
--•	PlanetName
--•	JourneysCount

SELECT
	P.Name
	,COUNT(P.Name)
	FROM Planets AS P
	JOIN Spaceports AS PORTS ON P.Id=PORTS.PlanetId
	JOIN Journeys AS J ON PORTS.Id=J.DestinationSpaceportId
	GROUP BY P.Name
	ORDER BY COUNT(P.Name) DESC,P.Name

