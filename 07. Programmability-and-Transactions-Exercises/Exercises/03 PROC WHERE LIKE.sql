--PROBLEM 03
--Write a stored procedure usp_GetTownsStartingWith that accept string as parameter 
--and returns all town names starting with that string. 

CREATE PROC usp_GetTownsStartingWith @inputString nvarchar (10)
	AS
	SELECT 
		[name]
		FROM Towns
		WHERE [Name] LIKE @inputString+'%'



		