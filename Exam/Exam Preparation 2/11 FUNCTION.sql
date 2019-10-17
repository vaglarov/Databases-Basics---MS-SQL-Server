--CREATE OR ALTER FUNCTION ufn_CalculateFutureValue 
--(@sum DECIMAL(15,2), @yearlyInterestRate FLOAT, @numberOfYears INT)
-- RETURNS DECIMAL(15, 4)
--AS
--BEGIN
-- DECLARE @RESULT DECIMAL(15,4)
-- SET @RESULT= @sum * (POWER(1 + @yearlyInterestRate, @numberOfYears));
-- RETURN @RESULT 
--END

CREATE FUNCTION udf_ExamGradesToUpdate(@studentId INT, @grade DECIMAL(15,2))
RETURNS NVARCHAR(MAX)
AS
BEGIN
DECLARE @studentExist INT = (SELECT TOP(1) StudentId FROM StudentsExams WHERE StudentId = @studentId);
IF @studentExist IS NULL
BEGIN
RETURN ('The student with provided id does not exist in the school!')
END

IF @grade > 6.00
BEGIN
RETURN ('Grade cannot be above 6.00!')
END
DECLARE @studentFirstName NVARCHAR(20) = (SELECT TOP(1) FirstName FROM Students WHERE Id = @studentId);
DECLARE @biggestGrade DECIMAL(15,2) = @grade + 0.50;
DECLARE @count INT = (SELECT Count(Grade) FROM StudentsExams
WHERE StudentId = @studentId AND Grade >= @grade AND Grade <= @biggestGrade)
RETURN ('You have to update ' + CAST(@count AS nvarchar(10)) + ' grades for the student ' + @studentFirstName)
END
GO

GO