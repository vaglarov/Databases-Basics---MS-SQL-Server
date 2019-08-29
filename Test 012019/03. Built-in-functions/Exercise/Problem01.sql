-- Problem 01.
SELECT FirstName,
       LastName
FROM Employees
WHERE LOWER(FirstName) LIKE '%sa';