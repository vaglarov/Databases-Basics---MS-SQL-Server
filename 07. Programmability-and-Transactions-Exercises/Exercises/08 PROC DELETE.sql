--8
--ALTER TABLE Departments SET ManagerId column NULL
--DELETE FROM EmployeesProjects
--UPDATE Departments SET ManagerId = NULL
--DELETE FROM Employees WHERE DepartmentId = @id
--DELETE FROM Departments WHERE Id = @id

CREATE PROC usp_DeleteEmployeesFromDepartment
	@depId INT
AS
	ALTER TABLE Departments
	ALTER COLUMN ManagerID INT NULL

	DELETE FROM EmployeesProjects
	WHERE EmployeeID IN(SELECT EmployeeID 
						FROM Employees
						WHERE DepartmentID = @depId)

	UPDATE Departments
	SET ManagerID = NULL
	WHERE DepartmentID = @depId

	UPDATE Employees
	SET ManagerID = NULL
	WHERE ManagerID IN(SELECT EmployeeID
						FROM Employees
						WHERE DepartmentID = @depId)

	DELETE FROM Employees
	WHERE DepartmentID = @depId

	DELETE FROM Departments
	WHERE DepartmentID = @depId

	SELECT COUNT(*)
	FROM Employees
	WHERE DepartmentID = @depId