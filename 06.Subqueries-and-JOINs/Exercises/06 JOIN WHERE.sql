--PROBLEM 06
--Write a query that selects:
--•	FirstName
--•	LastName
--•	HireDate
--•	DeptName
--Filter only employees hired after 1.1.1999 and are from either "Sales" or "Finance" departments, 
--sorted by HireDate (ascending).

SELECT 
	e.FirstName
	,e.LastName
	,e.HireDate
	,d.Name
	FROM Employees AS e
	JOIN Departments AS d ON d.DepartmentID=e.DepartmentID
	WHERE d.Name IN('Sales','Finance')
		AND HireDate>'1.1.1999'
	ORDER BY e.HireDate
