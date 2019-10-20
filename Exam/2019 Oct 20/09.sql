SELECT 
	CONCAT(E.FirstName,' ',E.LastName) AS [FullName]
	,COUNT(U.Id) AS [UsersCount]
	--CONCAT(E.FirstName,' ',E.LastName) AS [FULL NAME]
	FROM Employees AS E
	LEFT JOIN Reports AS R ON E.Id=R.EmployeeId
	LEFT JOIN Users AS U ON R.UserId=U.Id
	GROUP BY  E.FirstName,E.LastName
	ORDER BY [UsersCount] DESC, [FullName]
