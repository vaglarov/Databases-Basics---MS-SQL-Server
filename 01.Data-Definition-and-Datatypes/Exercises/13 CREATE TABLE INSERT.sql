-- PROBLEM 13

  --•	Directors (Id, DirectorName, Notes)
CREATE TABLE Directors
	(
	Id INT PRIMARY KEY IDENTITY
	,DirectorName NVARCHAR(30) NOT NULL
	,Notes VARCHAR(30)
	)

	--•	Genres (Id, GenreName, Notes)
CREATE TABLE Genres
	(
	Id INT PRIMARY KEY IDENTITY
	,GenreName NVARCHAR(30) NOT NULL
	,Notes VARCHAR(30)
	)
	--•	Categories (Id, CategoryName, Notes)
CREATE TABLE Categories
	(
	Id INT PRIMARY KEY IDENTITY
	,CategoryName VARCHAR(30)
	,Notes VARCHAR(30)
	)
	--•	Movies (Id, Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating, Notes)
CREATE TABLE Movies
	(
	Id INT PRIMARY KEY IDENTITY
	,Title VARCHAR(50) NOT NULL
	,DirectorId INT FOREIGN KEY REFERENCES Directors(Id)
	,CopyrightYear DATE NOT NULL
	,GenreId INT FOREIGN KEY REFERENCES Genres(Id)
	,CategoryId INT FOREIGN KEY REFERENCES Categories(Id)
	,Rating INT 
	,Notes VARCHAR(100)
	)

INSERT INTO Directors(DirectorName)
 VALUES ('Ivan')
		,('Ivan402')
		,('Ivan403')	
		,('Ivan404')	
		,('Ivan405')

INSERT INTO Genres(GenreName)
 VALUES ('Comedy')
		,('Action')
		,('Drama')	
		,('Anime')	
		,('Scary')

INSERT INTO Categories(CategoryName)
 VALUES ('First')
		,('Second')
		,('Third')	
		,('Forth')	
		,('Fifth')

INSERT INTO Movies(Title,DirectorId,CopyrightYear,GenreId,CategoryId)
 VALUES ('First title',1,'2000',1,2)
		,('Second title',2,'2001',2,1)
		,('Third title',2,'2002',2,1)
		,('Forth title',2,'2003',2,1)
		,('Fifth title',2,'2004',2,1)
		
