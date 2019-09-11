--Problem 03 - ManyToMany


CREATE TABLE Students(
	StudentID INT
	,[Name] CHAR(50)
) 

CREATE TABLE Exams(
	ExamID INT
	,[Name] CHAR(20))
 

ALTER TABLE Students
ALTER COLUMN StudentID INT NOT NULL

ALTER TABLE Students
ADD CONSTRAINT PK_StudentID PRIMARY KEY (StudentID)

ALTER TABLE Exams
ALTER COLUMN ExamID INT NOT NULL

ALTER TABLE Exams
ADD CONSTRAINT PK_Exams PRIMARY KEY (ExamID)


CREATE TABLE StudentsExams(
	StudentID INT
	,ExamID INT
)
ALTER TABLE StudentsExams
ALTER COLUMN StudentID INT NOT NULL

ALTER TABLE StudentsExams
ALTER COLUMN ExamID INT NOT NULL

ALTER TABLE StudentsExams
ADD CONSTRAINT PK_StudentsExams PRIMARY KEY (StudentID,ExamID)

ALTER TABLE StudentsExams
ADD CONSTRAINT FK_StudentsExams_StudentID FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
	CONSTRAINT FK_StudentsExams_Exams FOREIGN KEY (ExamID) REFERENCES Exams(ExamID)


INSERT INTO Exams(ExamID,[Name])
	VALUES (101,'SpringMVC'),
			(102,'Neo4j'),
			(103,'Oracle 11g')

INSERT INTO Students (StudentID,[Name])
VALUES (1,'Mila '),                                   
		(2,'Toni'),
		(3,'Ron')

SELECT * FROM StudentsExams
