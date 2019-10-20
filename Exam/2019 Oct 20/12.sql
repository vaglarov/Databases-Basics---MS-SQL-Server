CREATE OR ALTER PROC usp_AssignEmployeeToReport(@EmployeeId INT, @ReportId INT)
AS
	DECLARE @SearchId INT = 
	(
		SELECT
		E.Id
		FROM Reports AS R
		JOIN Employees AS E ON R.EmployeeId=E.Id
		JOIN Categories AS C ON R.CategoryId=C.Id
		WHERE E.DepartmentId=C.DepartmentId
		AND R.EmployeeId=@EmployeeId
		GROUP BY E.Id
	)

	DECLARE @EMPLO INT =
	(
		SELECT 
		EmployeeId
		FROM Reports
		WHERE Id=@ReportId
	)

	IF
	(@SearchId IS NULL)
	BEGIN
		RAISERROR('Employee doesn''t belong to the appropriate department!', 11, 1)
		RETURN
	END
	IF
	( @EMPLO=@SearchId)
	BEGIN
		RAISERROR('Employee doesn''t belong to the appropriate department!', 11, 1)
		RETURN
	END

	UPDATE Reports
	SET EmployeeId = @SearchId
	WHERE Id  = @ReportId