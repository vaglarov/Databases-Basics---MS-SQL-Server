--Problem 1
CREATE DATABASE Minions

-- After creating use this DB
USE Minions

-- Problem 2
--table Minions (Id, Name, Age)
CREATE TABLE Minions(
Id INT PRIMARY KEY IDENTITY, 
[Name] NVARCHAR(20) NOT NULL,
Age INT 
)
--table Towns (Id, Name)
CREATE TABLE Towns(
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(20) NOT NULL
)

--Problem 3
ALTER TABLE Minions 
ADD TownId INT FOREIGN KEY REFERENCES Towns(Id)

--Problem 4
--1	Sofia
--2	Plovdiv
--3	Varna
SET IDENTITY_INSERT Towns ON

INSERT INTO Towns(Id, [Name])	
VALUES	(1, 'Sofia'),
		(2,'Plovdiv'),
		(3,'Varna')

--		Id	Name	Age	TownId
--1	Kevin	22	1
--2	Bob	15	3
--3	Steward	NULL	2
SET IDENTITY_INSERT  Minions ON

INSERT INTO Minions( Id, [Name],Age,TownId)
VALUES	(1,	'Kevin',	22,	1),
		(2,	'Bob',	15,	3),
		(3,	'Steward',	NULL,	2)
