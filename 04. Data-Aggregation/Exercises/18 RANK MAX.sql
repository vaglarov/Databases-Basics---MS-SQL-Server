--PROBLEM 18
--Find the third highest salary in each department if there is such.

SELECT DepartmentID, Salary
FROM (
       SELECT DepartmentID,
              Salary,
              DENSE_RANK() over (partition by DepartmentID order by Salary DESC) [Rank]
       FROM Employees) [k]
WHERE Rank = 3
GROUP BY DepartmentID, Salary
