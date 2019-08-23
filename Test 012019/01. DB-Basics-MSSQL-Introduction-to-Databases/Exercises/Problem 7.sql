CREATE DATABASE SoftUniTESTDB

--Problem 7
USE SoftUniTESTDB

CREATE TABLE People (
[Id] INT IDENTITY(1, 1),
[Name] NVARCHAR(200) NOT NULL,
[Picture] VARBINARY(MAX) NULL,
[Height] FLOAT (2)NULL, 
[Weight] FLOAT (2)NULL, 
[Gender] CHAR NOT NULL CHECK (Gender = 'm' OR Gender = 'f'),
[Birthdate] DATETIME NOT NULL,
[Biography] NVARCHAR(MAX),
)
-- ADD VALUES
INSERT INTO People([Name],[Picture],[Height],[Weight],[Gender],[Birthdate],[Biography])
VALUES
('Boyan4o',NULL, 1.91, 85.4, 'm', '1990-06-22', 'Engineer'),
('Mihaela',22154, 1.60, 48.4, 'm', '1991-06-22', 'Doctor'),
('AgainSomeName',22154, 1.91, 85.4, 'm', '1990-06-22', 'Teacher'),
('Name',22154, 1.91, 85.4, 'm', '1990-06-22', 'Dentist'),
('Namedsa',22154, 1.91, 85.4, 'm', '1990-06-22', 'Engineer')


DROP TABLE People


