--PROBLEM 09
--Write a query that selects:
--�	EmployeeID
--�	FirstName
--�	ManagerID
--�	ManagerName
--Filter all employees with a manager who has ID equals to 3 or 7.
-- Return all the rows, sorted by EmployeeID in ascending order.

SELECT
	e.EmployeeID
	,e.FirstName
	,e.ManagerID
	,m.FirstName
FROM Employees AS e
JOIN Employees AS m ON e.ManagerID = m.EmployeeID
WHERE e.ManagerID IN(3, 7)
ORDER BY e.EmployeeID

