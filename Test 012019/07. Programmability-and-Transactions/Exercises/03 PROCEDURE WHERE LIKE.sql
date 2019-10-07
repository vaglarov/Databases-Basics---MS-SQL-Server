--PROBLEM 03
--Write a stored procedure usp_GetTownsStartingWith
--that accept string as parameter and returns all town names starting with that string. 

CREATE PROC usp_GetTownsStartingWith @inputString NVARCHAR(10)
AS
SELECT 
	[NAME]
	FROM Towns
	WHERE [NAME] LIKE @inputString+'%'

--TEST
EXEC usp_GetTownsStartingWith B
	