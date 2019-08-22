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
