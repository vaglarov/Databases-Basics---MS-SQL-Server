--Find all students, who have not attended an exam. 
--Select their full name (first name + last name).
--Order the results by full name (ascending).


SELECT 
	CONCAT(S.FirstName,' ',LastName) AS [FULL NAME]
	FROM Students AS S
	LEFT JOIN  StudentsExams AS SE ON S.Id=SE.StudentId
	WHERE ExamId IS NULL
	ORDER BY [FULL NAME]