--Find all students who don’t have any subjects.
-- Select their full name. The full name is combination of first name, middle name and last name. 
-- Order the result by full name
--NOTE: If the middle name is null you have to concatenate 
--the first name and last name separated with single space.


SELECT
	CONCAT(S.FirstName,' ',MiddleName+' ',S.LastName) AS [Full Name]
	FROM Students AS S
	LEFT JOIN StudentsSubjects AS SS ON S.ID=SS.StudentId
	WHERE SS.Id IS NULL
	ORDER BY [Full Name]

