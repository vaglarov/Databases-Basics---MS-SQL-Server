--Problem 04 GROUP BY AVG
SELECT TOP(2)
	DepositGroup
FROM 
	WizzardDeposits
GROUP BY DepositGroup
ORDER BY AVG(MagicWandSize)