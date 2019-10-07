--PROBLEM 06
--Write a stored procedure usp_EmployeesBySalaryLevel that receive as parameter level of salary 
--(low, average or high) and print the names of all employees that have given level of salary.
-- You should use the function - “dbo.ufn_GetSalaryLevel(@Salary)”, which was part of the previous task,
--  inside your “CREATE PROCEDURE …” query.

CREATE PROC usp_EmployeesBySalaryLevel @inputSalaryLever VARCHAR(10)
AS
	SELECT 
		FirstName
		,dbo.ufn_GetSalaryLevel(Salary) AS SalaryLevel
	FROM Employees
	WHERE dbo.ufn_GetSalaryLevel(Salary)= 'Low'


--TEST

EXEC usp_EmployeesBySalaryLevel Low