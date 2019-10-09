--PROBLEM 04
--Write a stored procedure usp_GetEmployeesFromTown that accepts town name as parameter 
--and return the employees’ first and last name that live in the given town. 

CREATE PROC usp_GetEmployeesFromTown @inputTown NVARCHAR(30)
AS
SELECT 
	e.FirstName
	,E.LastName
	FROM Employees AS e
	INNER JOIN Addresses AS a ON E.AddressID=A.AddressID
	INNER JOIN Towns AS t ON A.TownID=T.TownID
	WHERE T.Name=@inputTown


EXEC usp_GetEmployeesFromTown Sofia

		