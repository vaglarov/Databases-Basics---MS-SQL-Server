--PROBLEM 07
--Select all deposit groups and their total deposit sums but only for the wizards who have
--their magic wands crafted by Ollivander family. Filter total deposit amounts lower than 150000. 
--Order by total deposit amount in descending order.

SELECT 
	W.DepositGroup
	,SUM(DepositAmount) AS TotalSum
	FROM WizzardDeposits AS W
	WHERE MagicWandCreator='Ollivander family'
	GROUP BY W.DepositGroup
	HAVING SUM(DepositAmount)<150000
	ORDER BY TotalSum DESC