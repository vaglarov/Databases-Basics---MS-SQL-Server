--Problem 07
SELECT  TOP(5)
	e.EmployeeID
	,e.FirstName
	,p.[Name]
FROM Employees AS e
JOIN
	 EmployeesProjects AS temp 
	ON
	 e.EmployeeID=temp.EmployeeID
JOIN 
	Projects AS p 
	ON 
	temp.ProjectID=p.ProjectID
WHERE
	 p.StartDate >'2002.08.13' 
	 AND p.EndDate IS NULL
ORDER BY EmployeeID 
