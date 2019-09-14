--Problem 05

SELECT TOP (3)
	EmployeeID
	,FirstName
FROM Employees AS e
WHERE EmployeeID NOT IN(
	SELECT EmployeeID
	FROM EmployeesProjects)
ORDER BY EmployeeID

