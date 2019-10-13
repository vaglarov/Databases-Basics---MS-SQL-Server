--PROBLEM 10
--Your task is to create a stored procedure usp_GetHoldersWithBalanceHigherThan 
--that accepts a number as a parameter and returns all people who have more money 
--in total of all their accounts than the supplied number.
-- Order them by first name, then by last name

CREATE OR ALTER PROC usp_GetHoldersWithBalanceHigherThan(@moreThanMoney DECIMAL(15, 2))
AS
SELECT FirstName, LastName
FROM (
       SELECT FirstName, LastName, SUM(a.Balance) [Sum]
       FROM AccountHolders [ah]
              JOIN Accounts [a] ON a.AccountHolderId = ah.Id
       GROUP BY ah.Id, FirstName, LastName) [t]
WHERE [Sum] > @moreThanMoney
ORDER BY FirstName, LastName

EXEC usp_GetHoldersWithBalanceHigherThan 10000