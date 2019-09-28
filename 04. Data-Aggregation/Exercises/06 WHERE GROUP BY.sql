--PROBLEM 06
--Select all deposit groups and their total deposit sums but only for 
--the wizards who have their magic wands crafted by Ollivander family.

SELECT 
	W.DepositGroup
	,SUM(W.DepositAmount) AS TotalSum
	FROM WizzardDeposits AS W
	WHERE MagicWandCreator ='Ollivander family'
	GROUP BY DepositGroup

