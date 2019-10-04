--PROBLEM 14
--Select the minimum salary from the employees for departments with ID (2, 5, 7) 
--but only for those hired after 01/01/2000.
--Your query should return:

SELECT 
		DepartmentID
		,MIN(Salary) AS MinSalary
	FROM Employees
	WHERE DepartmentID IN (2, 5, 7) 
		AND HireDate>'01/01/2000'
	GROUP BY DepartmentID
