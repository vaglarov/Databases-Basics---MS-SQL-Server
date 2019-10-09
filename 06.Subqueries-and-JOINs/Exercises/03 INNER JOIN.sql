--PROBLEM 03
--Write a query that selects:
--•	EmployeeID
--•	FirstName
--•	LastName
--•	DepartmentName
--Sorted by EmployeeID in ascending order. Select only employees from “Sales” department.

SELECT 
	e.EmployeeID
	,e.FirstName
	,e.LastName
	,d.Name
	FROM Employees AS e
	INNER JOIN Departments AS d ON d.DepartmentID=e.DepartmentID
	WHERE D.Name ='Sales' 
	ORDER BY EmployeeID

