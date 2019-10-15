--PROBLEM 05
--Extract from the database, all travel cards. Sort the results by card number ascending.
--Required Columns
--•	CardNumber
--•	JobDuringJourney


SELECT 
	CardNumber
	,JobDuringJourney
	FROM TravelCards
	ORDER BY CardNumber
