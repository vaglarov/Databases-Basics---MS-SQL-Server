--PROBLEM 12
-- You compare the deposits of every wizard with the wizard after him. 
--If a wizard is the last one in the database, simply ignore it. 
--In the end you have to sum the difference between the deposits.


SELECT SUM(DiffTable.Diff) AS SumDifference
FROM
(
	SELECT wd.DepositAmount - ( SELECT wdn.DepositAmount
								FROM WizzardDeposits AS wdn
								WHERE wdn.Id = wd.Id + 1) AS Diff
	FROM WizzardDeposits AS wd
) AS DiffTable