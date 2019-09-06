--Problem 19
SELECT TOP (10) FirstName, LastName, k.DepartmentID
FROM Employees AS [k]
       JOIN
     (SELECT DepartmentID, AVG(Salary) AS [Avg]
      FROM Employees
      GROUP BY DepartmentID) AS [r] ON r.DepartmentID = k.DepartmentID
WHERE Salary > Avg
