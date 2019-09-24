--PROBLEM 14
--Write a SQL query to find the first and last names of all employees whose department ID is different from 4.

SELECT 
	FirstName
	,LastName
	FROM Employees
	WHERE NOT DepartmentID =4