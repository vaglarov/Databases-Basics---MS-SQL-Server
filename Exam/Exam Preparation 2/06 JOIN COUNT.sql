--Select all students and the count of teachers each one has. 

SELECT 
	S.FirstName
	,S.LastName
	,COUNT(ST.TeacherId)
	FROM Students AS S
	JOIN StudentsTeachers AS ST ON S.ID=ST.StudentId
	GROUP BY S.FirstName,S.LastName