--PROBLEM 09
--Count all colonists that are on technical journey. 
--Required Columns
--•	Count


SELECT 
	COUNT (TC.Id) AS [Count]
	FROM TravelCards AS TC
	JOIN Colonists AS C ON TC.ColonistId=C.Id
	JOIN Journeys AS J ON J.Id=TC.JourneyId
	WHERE J.Purpose='Technical'


