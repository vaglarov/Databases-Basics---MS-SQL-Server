--PROBLEM 05
--Select all deposit groups and their total deposit sums.

SELECT 
	DepositGroup
	,SUM(DepositAmount) AS TotalSum
	FROM WizzardDeposits
	GROUP BY DepositGroup
