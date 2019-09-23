--PROBLE 21
USE SoftUni
--•	Towns – Name
--•	Departments – Name
--•	Employees – FirstName, LastName, JobTitle, Salary

SELECT [Name] FROM Towns 
ORDER BY [Name]
SELECT [Name]FROM Departments
ORDER BY [Name]
SELECT 
	FirstName 
	,LastName
	,JobTitle
	,Salary
	FROM Employees
ORDER BY Salary DESC