--Problem 12
SELECT SUM(DiffTable.Diff) AS SumDifference
FROM
(
	SELECT wd.DepositAmount - ( SELECT wdn.DepositAmount
								FROM WizzardDeposits AS wdn
								WHERE wdn.Id = wd.Id + 1) AS Diff
	FROM WizzardDeposits AS wd
) AS DiffTable