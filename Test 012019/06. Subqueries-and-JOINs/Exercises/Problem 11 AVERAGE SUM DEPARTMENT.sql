--Problem 11
--Write a query that returns the value of the lowest average salary of all departments.
SELECT   MIN(a.AverageSalary) AS MinAverageSalary
  FROM 
  (
     SELECT e.DepartmentID, 
            AVG(e.Salary) AS AverageSalary
       FROM Employees AS e
   GROUP BY e.DepartmentID
  ) AS a
