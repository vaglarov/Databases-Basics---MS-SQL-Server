--PROBLEM 10
--Extract from the database the fastest spaceship and its destination spaceport name.
-- In other words, the ship with the highest light speed rate.
--Required Columns
--•	SpaceshipName
--•	SpaceportName

SELECT TOP 1
	SHIP.Name
	,PORT.Name
	FROM Spaceships AS SHIP
	JOIN Journeys AS J ON SHIP.Id=J.SpaceshipId
	JOIN Spaceports AS [PORT] ON J.DestinationSpaceportId=[PORT].Id
	ORDER BY SHIP.LightSpeedRate DESC
