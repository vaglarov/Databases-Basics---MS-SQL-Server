--PROBLEM 02
--Create stored procedure usp_GetEmployeesSalaryAboveNumber 
--that accept a number (of type DECIMAL(18,4)) as parameter and returns all employees� 
--first and last names whose salary is above or equal to the given number. 

CREATE PROC usp_GetEmployeesSalaryAboveNumber @inputNumber DECIMAL(18,4)
AS 
	SELECT 
		FirstName
		,LastName
		FROM Employees
		WHERE Salary>=@inputNumber

-- EXECUTE PROCEDURE
EXEC usp_GetEmployeesSalaryAboveNumber 3000

