--PROBLEM 03
--For wizards in each deposit group show the longest magic wand. Rename the new column appropriately.

SELECT 
	DepositGroup
	,MAX(MagicWandSize)
	FROM WizzardDeposits
	GROUP BY DepositGroup
