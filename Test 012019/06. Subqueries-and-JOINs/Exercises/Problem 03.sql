--Problem 03

SELECT
	e.EmployeeID
	,e.FirstName
	,e.LastName
	,d.[Name]
FROM Employees AS e
JOIN Departments AS d ON  e.DepartmentID=d.DepartmentID
WHERE e.DepartmentID=3
ORDER BY e.EmployeeID
