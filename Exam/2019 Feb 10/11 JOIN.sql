--PROBLEM 11
--Extract from the database those spaceships, which have pilots, younger than 30 years old. 
--In other words, 30 years from 01/01/2019. Sort the results alphabetically by spaceship name.
--Required Columns
--•	Name
--•	Manufacturer

SELECT s.Name, s.Manufacturer
	FROM Colonists c
	JOIN TravelCards tc ON tc.ColonistId = c.id
	JOIN Journeys j on tc.JourneyId = j.id
	JOIN Spaceships s on j.SpaceshipId = s.id
	WHERE DATEDIFF(YEAR, c.Birthdate, '01/01/2019') < 30 AND tc.JobDuringJourney = 'Pilot'
	ORDER BY s.Name