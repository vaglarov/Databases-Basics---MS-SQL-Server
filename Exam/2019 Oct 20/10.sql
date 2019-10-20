SELECT 
	 ISNULL(E.FirstName+' '+E.LastName ,'None') AS [Employee]
	,ISNULL(D.Name ,'None') AS [Department]
	,ISNULL(C.Name,'None')  AS [Category]
	,[Description]
	,FORMAT(R.OpenDate,'dd.MM.yyyy') as [OpenDate2]
	,S.Label AS [Status]
	,U.Name
	FROM Reports AS R
	LEFT JOIN Employees AS E ON R.EmployeeId=E.Id
	LEFT JOIN Departments AS D ON E.DepartmentId=D.Id
	LEFT JOIN Categories AS C ON R.CategoryId=C.Id
	LEFT JOIN [Status]  AS S ON R.StatusId=S.Id
	LEFT JOIN Users AS U ON R.UserId=U.Id
	ORDER BY E.FirstName DESC,E.LastName DESC, D.Name,C.Name,R.Description,R.OpenDate,S.Label,U.Name


