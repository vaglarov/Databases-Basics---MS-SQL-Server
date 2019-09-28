--PROBLEM 08
--•	Deposit group 
--•	Magic wand creator
--•	Minimum deposit charge for each group 
--Select the data in ascending ordered by MagicWandCreator and DepositGroup.

SELECT 
	W.DepositGroup
	,W.MagicWandCreator
	,MIN(W.DepositCharge) AS MinDepositCharge
	FROM WizzardDeposits AS W
	GROUP BY W.DepositGroup,W.MagicWandCreator
	ORDER BY W.MagicWandCreator,W.DepositGroup
