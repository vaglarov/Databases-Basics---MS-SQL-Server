--PROBLEM 08
--Extract from the database all colonists, which have a pilot job. Sort the result by id, ascending.
--`Required Columns
--•	Id
--•	FullName


SELECT 
	C.Id
	,C.FirstName+' '+LastName AS [Full Name]
	FROM TravelCards AS TC
	JOIN Colonists AS C ON TC.ColonistId=C.Id
	WHERE TC.JobDuringJourney= 'Pilot'
	ORDER BY C.Id

