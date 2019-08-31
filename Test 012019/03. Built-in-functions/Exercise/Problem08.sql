--Problem 08
CREATE VIEW v_EmployeesHiredAfter2000
AS
SELECT FirstName,
       LastName
FROM Employees
WHERE YEAR(HireDate) > YEAR('2000-01-01')