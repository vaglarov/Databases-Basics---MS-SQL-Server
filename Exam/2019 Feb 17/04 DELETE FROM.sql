--PROBLEM 04
--Delete all teachers, whose phone number contains ‘72’.

DELETE FROM StudentsTeachers
WHERE TeacherId IN (
					SELECT 
						Id 
						FROM Teachers 
						WHERE Phone LIKE '%72%')

DELETE FROM Teachers
WHERE Phone LIKE '%72%'
