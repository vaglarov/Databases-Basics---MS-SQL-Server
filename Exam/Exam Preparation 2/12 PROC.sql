CREATE PROC usp_ExcludeFromSchool @StudentId INT
AS 
DECLARE @TargetStudentId INT = (SELECT Id FROM Students WHERE Id = @StudentId)

IF (@TargetStudentId IS NULL)
BEGIN
	RAISERROR('This school has no student with the provid1ed id!', 16, 1)
	RETURN
END

DELETE FROM StudentsExams
WHERE StudentId = 5

DELETE FROM StudentsSubjects
WHERE StudentId = 5

DELETE FROM StudentsTeachers
WHERE StudentId = 5

DELETE FROM Students
WHERE Id = 5