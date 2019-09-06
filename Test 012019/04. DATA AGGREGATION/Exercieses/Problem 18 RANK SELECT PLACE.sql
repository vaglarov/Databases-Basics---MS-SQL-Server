--Problem 18 RANK SELECT PLACE 
SELECT DepartmentID, Salary
FROM (
       SELECT DepartmentID,
              Salary,
              DENSE_RANK() over (partition by DepartmentID order by Salary DESC) [Rank]
       FROM Employees) [k]
WHERE Rank = 3
GROUP BY DepartmentID, Salary
