--Problem 19
--Write a query that returns:
--•	FirstName
--•	LastName
--•	DepartmentID
--Select all employees who have salary higher than the average salary of their respective departments. Select only the first 10 rows. Order by DepartmentID.


SELECT TOP (10) FirstName, LastName, k.DepartmentID
FROM Employees AS [k]
       JOIN
     (SELECT DepartmentID, AVG(Salary) AS [Avg]
      FROM Employees
      GROUP BY DepartmentID) AS [r] ON r.DepartmentID = k.DepartmentID
WHERE Salary > Avg