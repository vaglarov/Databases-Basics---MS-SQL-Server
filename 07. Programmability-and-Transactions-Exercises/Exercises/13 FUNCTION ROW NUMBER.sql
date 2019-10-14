--PROBLEM 13
--Create a function ufn_CashInUsersGames that sums the cash of odd rows. 
--Rows must be ordered by cash in descending order. 
--The function should take a game name as a parameter and return the result as table.
-- Submit only your function in.
--Execute the function over the following game names, ordered exactly like:
-- “Love in a mist”.


CREATE FUNCTION ufn_CashInUsersGames(@GameName NVARCHAR(50))
RETURNS TABLE AS
RETURN
(
	SELECT SUM(t.Cash) AS SumCash
	FROM(
		SELECT ROW_NUMBER() OVER(ORDER BY Cash DESC) AS RowCash
				,Cash
		FROM UsersGames AS ug
		JOIN Games AS g ON ug.GameId = g.Id
		WHERE g.[Name] = @GameName) AS t
	WHERE t.RowCash % 2 <> 0				
)
GO

SELECT * 
FROM dbo.ufn_CashInUsersGames('Love in a mist')