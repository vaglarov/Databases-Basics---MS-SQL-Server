--Find the average grade for each subject.
--Select the subject name and the average grade. 
--Sort them by subject id (ascending).

SELECT
	S.Name
	,AVG(SS.Grade) AS AverageGrade
	FROM Subjects AS S
	JOIN StudentsSubjects AS SS ON S.Id=SS.SubjectId
	GROUP BY S.Name,S.Id
	ORDER BY S.ID
	
