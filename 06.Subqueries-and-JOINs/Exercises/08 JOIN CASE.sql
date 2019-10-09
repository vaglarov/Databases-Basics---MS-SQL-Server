--PROBLEM 08
--Write a query that selects:
--•	EmployeeID
--•	FirstName
--•	ProjectName
--Filter all the projects of employee with Id 24. If the project has started during or after 2005
-- the returned value should be NULL

SELECT
		e.EmployeeID
		,e.FirstName
		,CASE
		 WHEN YEAR(p.StartDate) >= 2005 THEN NULL
		 ELSE p.[Name]
		 END AS ProjectName
	FROM Employees AS e
	JOIN EmployeesProjects AS temp ON e.EmployeeID=temp.EmployeeID
	JOIN Projects AS p ON p.ProjectID=temp.ProjectID
	WHERE e.EmployeeID=24