--PROBLEM 03
--Make all grades 6.00, where the subject id is 1 or 2, 
--if the grade is above or equal to 5.50

UPDATE StudentsSubjects 
SET Grade=6
WHERE SubjectId IN (1,2) AND Grade >=5.5