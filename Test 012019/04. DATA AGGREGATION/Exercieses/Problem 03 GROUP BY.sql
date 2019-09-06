--Problem 03 GROUP BY
SELECT 
	DepositGroup
	,MAX(MagicWandSize) AS LongestMagicWand
FROM
	WizzardDeposits
GROUP BY DepositGroup