--PROBLEM 07
--Extract from the database, all Military journeys. Sort the results ascending by journey start.
--Required Columns
--•	Id
--•	JourneyStart
--•	JourneyEnd

SELECT
	Id
	,FORMAT (JourneyStart, 'dd/MM/yyyy ')
	,FORMAT (JourneyEnd, 'dd/MM/yyyy ')
	FROM Journeys
	WHERE Purpose = 'Military'
	ORDER BY JourneyStart

