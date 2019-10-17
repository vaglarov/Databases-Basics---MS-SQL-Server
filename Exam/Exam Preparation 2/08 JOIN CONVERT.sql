--Find top 10 students, who have highest average grades from the exams.
--Format the grade, two symbols after the decimal point.
--Order them by grade (descending), then by first name (ascending), then by last name (ascending)


SELECT TOP 10
	S.FirstName
	,S.LastName
	, CONVERT (decimal(3,2),AVG(SE.GRADE))  AS [GRADE]
	FROM Students AS S
	JOIN StudentsExams AS SE ON S.Id=SE.StudentId
	GROUP BY S.FirstName,S.LastName
	ORDER BY [GRADE] DESC,S.FirstName,S.LastName