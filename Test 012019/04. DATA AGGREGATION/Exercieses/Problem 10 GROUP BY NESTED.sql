--Problem 10 GROUP BY NESTED
SELECT
*
FROM
	(SELECT
		SUBSTRING(FirstName,1,1) AS FirstLetter
	FROM
		WizzardDeposits
	WHERE DepositGroup='Troll Chest') AS [TABLE]
GROUP BY FirstLetter
ORDER BY FirstLetter
