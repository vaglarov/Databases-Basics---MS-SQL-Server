--PROBLEM 04
--Write a stored procedure usp_GetEmployeesFromTown 
--that accepts town name as parameter and return the employees’ first and last name
--that live in the given town. 

CREATE PROC usp_GetEmployeesFromTown @inputTownName NVARCHAR(30)
AS
SELECT 
	FirstName
	,LastName
	--,T.Name
	FROM Employees AS e
	INNER JOIN Addresses AS A ON E.AddressID=A.AddressID
	INNER JOIN Towns AS T ON A.TownID=T.TownID
	WHERE T.Name=@inputTownName

--TEST
EXEC usp_GetEmployeesFromTown 'Sofia'


