--Program 14 MIN WHERE AND
SELECT
	DepartmentID
	,MIN(Salary) AS MinimumSalary
FROM Employees
	WHERE DepartmentID IN (2,7,5)
	AND HireDate>'01/01/2000'
GROUP BY DepartmentID