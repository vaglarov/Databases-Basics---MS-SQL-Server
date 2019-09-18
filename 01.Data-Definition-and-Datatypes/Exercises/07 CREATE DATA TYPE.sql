--Problem 07 CREATE DATA TYPES
CREATE TABLE People
	(
	Id INT NOT NULL PRIMARY KEY IDENTITY(1,1)
	,[Name] NVARCHAR(200) NOT NULL
	,Picture VARBINARY
	,[Height] DECIMAL (15,2)
	,[Weight] DECIMAL (15,2)
	,[Gender] CHAR NOT NULL CHECK (Gender = 'm' OR Gender = 'f')
	,[Birthdate] DATE NOT NULL
	,[Biography] NVARCHAR(MAX)
	)

INSERT INTO People([Name],[Picture],[Height],[Weight],[Gender],[Birthdate],[Biography])
VALUES
('Boyan4o',NULL, 1.91, 85.4, 'm', '1990-06-22', 'Engineer'),
('Mihaela',22154, 1.60, 48.4, 'm', '1991-06-22', 'Doctor'),
('AgainSomeName',22154, 1.91, 85.4, 'm', '1990-06-22', 'Teacher'),
('Name',22154, 1.91, 85.4, 'm', '1990-06-22', 'Dentist'),
('Namedsa',22154, 1.91, 85.4, 'm', '1990-06-22', 'Engineer')

--•	Id – unique number for every person there will be no more than 231-1 people. (Auto incremented)
--•	Name – full name of the person will be no more than 200 Unicode characters. (Not null)
--•	Picture – image with size up to 2 MB. (Allow nulls)
--•	Height –  In meters. Real number precise up to 2 digits after floating point. (Allow nulls)
--•	Weight –  In kilograms. Real number precise up to 2 digits after floating point. (Allow nulls)
--•	Gender – Possible states are m or f. (Not null)
--•	Birthdate – (Not null)
--•	Biography – detailed biography of the person it can contain max allowed Unicode characters. (Allow nulls)
--Make Id primary key. Populate the table with only 5 records. Submit your CREATE and INSERT statements as Run queries & check DB.
