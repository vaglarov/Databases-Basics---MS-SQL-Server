--PROBLEM 14
--Extract from the database the shortest journey, its destination spaceport name, planet name and purpose.
--Required Columns
--•	Id
--•	PlanetName
--•	SpaceportName
--•	JourneyPurpose

SELECT TOP 1
	J.Id
	,P.Name
	,PORTS.Name
	,J.Purpose
	--,DATEDIFF(DAY,JourneyStart,J.JourneyEnd) 
	FROM Journeys AS J
	JOIN Spaceports AS PORTS ON J.DestinationSpaceportId=PORTS.Id
	JOIN Planets AS P ON PORTS.PlanetId=P.Id
	ORDER BY DATEDIFF(DAY,JourneyStart,J.JourneyEnd) 


