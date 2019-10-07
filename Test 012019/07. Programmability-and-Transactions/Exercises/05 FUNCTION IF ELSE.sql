--PROBLEM 05
--Write a function ufn_GetSalaryLevel(@salary DECIMAL(18,4)) 
--that receives salary of an employee and returns the level of the salary.
--•	If salary is < 30000 return “Low”
--•	If salary is between 30000 and 50000 (inclusive) return “Average”
--•	If salary is > 50000 return “High”


CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4)) 
RETURNS CHAR(10)	
BEGIN
		IF(@salary<30000)
			RETURN 'Low'
		ELSE IF (@salary>=30000 AND @salary<=50000)
			RETURN 'Average'
	
			RETURN 'High'
END


--TEST
SELECT 
	FirstName+' '+LastName  as FUll_NAME
	,Salary
	,dbo.ufn_GetSalaryLevel(Salary) AS SalaryLevel
FROM Employees