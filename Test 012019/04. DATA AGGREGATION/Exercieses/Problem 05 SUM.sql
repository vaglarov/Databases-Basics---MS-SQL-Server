--Problem 05 SUM
SELECT 
	DepositGroup
	,SUM(DepositAmount) AS TotalSum
FROM
	WizzardDeposits
GROUP BY DepositGroup