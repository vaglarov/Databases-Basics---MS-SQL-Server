--PROBLEM 10
--Write a query that returns all unique wizard first letters of their first names
--only if they have deposit of type Troll Chest.
--Order them alphabetically. Use GROUP BY for uniqueness.

SELECT
	[FIRST LETTER]
	FROM (
			SELECT DISTINCT
				LEFT(FirstName, 1) AS [FIRST LETTER]
				FROM WizzardDeposits
				WHERE DepositGroup='Troll Chest') AS TEMP_TABLE
	GROUP BY [FIRST LETTER]


