--PROBLEM 05
--Write a function ufn_GetSalaryLevel(@salary DECIMAL(18,4)) that receives salary of an employee and returns the level of the salary.
--•	If salary is < 30000 return “Low”
--•	If salary is between 30000 and 50000 (inclusive) return “Average”
--•	If salary is > 50000 return “High”

CREATE FUNCTION ufn_GetSalaryLevel(@salary INT)
RETURNS NVARCHAR(10)
AS
BEGIN
	DECLARE @salaryLevel VARCHAR(10)
	IF (@salary < 30000)
	 SET @salaryLevel = 'Low'
	ELSE IF(@salary >= 30000 AND @salary <= 50000)
	 SET @salaryLevel = 'Average'
	ELSE
	 SET @salaryLevel = 'High'
	RETURN @salaryLevel
END

SELECT 
	FirstName +' '+LastName  AS [Full Name]
	,Salary
	, dbo.ufn_GetSalaryLevel(Salary) AS SalaryLevel
	FROM Employees
