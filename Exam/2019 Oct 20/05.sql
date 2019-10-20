
SELECT 
	[Description]
	--,OpenDate
	,FORMAT(OpenDate,'dd-MM-yyyy') AS [OpenDate2]
	FROM Reports
	WHERE EmployeeId IS NULL
	ORDER BY OpenDate  ,[Description]