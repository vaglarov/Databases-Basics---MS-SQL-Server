--PROBLEM 11
--Use the query from the previous problem and upgrade it, so that it finds only the 
--employees whose Rank is 2 and again, order them by Salary (descending).

SELECT 
	*
	FROM (
		SELECT 
			EmployeeID
			,FirstName
			,LastName
			,Salary
			,DENSE_RANK() OVER (PARTITION  BY Salary  ORDER BY EmployeeID ) AS [Rank]
			FROM Employees
			WHERE Salary BETWEEN 10000 AND 50000 
			) AS TEMP
	WHERE TEMP.[Rank]=2
	ORDER BY TEMP.Salary DESC