--PROBLEM 04
--Write a query that selects:
--•	EmployeeID
--•	FirstName
--•	Salary
--•	DepartmentName
--Filter only employees with salary higher than 15000. Return the first 5 rows sorted by DepartmentID in ascending 

SELECT TOP 5
	e.EmployeeID
	,e.FirstName
	,e.Salary
	,d.Name
	FROM Employees AS e
	INNER JOIN Departments AS d ON d.DepartmentID=e.DepartmentID
	WHERE Salary > '15000'
	ORDER BY e.DepartmentID
	
