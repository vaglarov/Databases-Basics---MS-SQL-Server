--PROBLEM 12
--Extract from the database names of all planets and their spaceports, which have educational missions.
-- Sort the results by spaceport name in descending order.
--Required Columns
--•	PlanetName
--•	SpaceportName

SELECT 
	P.Name
	,PORTS.Name
	FROM Planets AS P
	JOIN Spaceports AS PORTS ON P.Id=PORTS.PlanetId
	JOIN Journeys AS J ON PORTS.Id=J.DestinationSpaceportId
	WHERE J.Purpose='Educational'
	ORDER BY PORTS.Name DESC



