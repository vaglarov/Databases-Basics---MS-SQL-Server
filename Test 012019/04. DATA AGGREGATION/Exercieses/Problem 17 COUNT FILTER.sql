--Problem 17 COUNT FILTER
SELECT 
	COUNT(Salary) AS [COUNT]
FROM Employees
WHERE ManagerID IS NULL