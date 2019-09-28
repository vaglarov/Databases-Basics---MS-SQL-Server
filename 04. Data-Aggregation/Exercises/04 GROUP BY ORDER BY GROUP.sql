--PROBLEM 04
--Select the two deposit groups with the lowest average wand size.


SELECT TOP (2)
	DepositGroup
	--,AVG(MagicWandSize ) AS AVGsize
	FROM WizzardDeposits
	GROUP BY DepositGroup
	ORDER BY AVG(MagicWandSize ) ASC
 