--PROBLEM 11
--Write a query that returns the value of the lowest average salary of all departments.
	
SELECT 
	MIN( avgSALARY)
	FROM( 
		SELECT 
		AVG(Salary) AS avgSALARY
		FROM Employees AS e
		JOIN Departments AS d ON e.DepartmentID=d.DepartmentID
		GROUP BY d.DepartmentID) AS g