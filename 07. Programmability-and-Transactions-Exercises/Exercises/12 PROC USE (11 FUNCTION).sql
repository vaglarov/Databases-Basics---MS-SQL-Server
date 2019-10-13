--PROBLEM 12
--Your task is to create a stored procedure usp_CalculateFutureValueForAccount that uses the function
-- from the previous problem to give an interest to a person's account for 5 years, 
-- along with information about his/her account id, first name, last name and current balance as it is shown in the example below.
--  It should take the AccountId and the interest rate as parameters.
-- Again you are provided with “dbo.ufn_CalculateFutureValue” function which was part of the previous task.

CREATE OR ALTER PROC usp_CalculateFutureValueForAccount (@insertId INT , @insertRate FLOAT)
AS
SELECT
	AH.Id
	,FirstName
	,LastName
	,Balance AS [Current Balance]
	,dbo.ufn_CalculateFutureValue(Balance, @insertRate ,5)
	FROM AccountHolders AS AH
	JOIN Accounts AS A ON AH.Id=A.Id
	WHERE AH.Id=@insertId
	
EXEC usp_CalculateFutureValueForAccount 1, 0.10