--PROBLEM 15
--Select all employees who earn more than 30000 into a new table. Then delete all employees
--who have ManagerID = 42 (in the new table). 
--Then increase the salaries of all employees with DepartmentID=1 by 5000. 
--Finally, select the average salaries in each department.

SELECT 
	*
INTO Temp_Table1
	FROM Employees
	WHERE Salary> 30000 

DELETE
FROM Temp_Table1
WHERE ManagerID = 42

UPDATE Temp_Table1
SET Salary += 5000
WHERE DepartmentID =1

SELECT
	DepartmentID
	,AVG(Salary) AS AverageSalary
	FROM Temp_Table1
	GROUP BY DepartmentID