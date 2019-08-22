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

