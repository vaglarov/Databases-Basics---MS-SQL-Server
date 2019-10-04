--PROBLEM 17
--Count the salaries of all employees who don’t have a manager

SELECT 
	COUNT(EmployeeID) AS [COUNT NUMBER] 
	FROM Employees
	WHERE  ManagerID IS NULL