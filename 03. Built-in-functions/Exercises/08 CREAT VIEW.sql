--PROBLEM 08
--Write a SQL query to create view V_EmployeesHiredAfter2000 
--with first and last name to all employees hired after 2000 year. 

CREATE VIEW V_EmployeesHiredAfter2000 AS 
SELECT 
	FirstName
	,LastName
	FROM Employees
	WHERE HireDate > '2000-12-31'