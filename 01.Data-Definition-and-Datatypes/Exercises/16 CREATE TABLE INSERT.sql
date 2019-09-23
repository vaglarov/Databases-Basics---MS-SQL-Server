--Problem 16
--CREATE DATABASE SoftUni
--USE SoftUni

--•	Towns (Id, Name)

CREATE TABLE Towns
	(
		Id INT PRIMARY KEY IDENTITY(1,1)
		,[Name] NVARCHAR(30) NOT NULL
	)

INSERT INTO Towns ([Name])
VALUES ('Sofia')
	,('Plovdiv')
	,('Birgas')
	,('Varna')

--•	Addresses (Id, AddressText, TownId)

CREATE TABLE Addresses
	(
		Id INT PRIMARY KEY IDENTITY (1,1)
		,AddressText NVARCHAR(30) NOT NULL
		,TownId INT FOREIGN KEY REFERENCES Towns(Id)
	)

INSERT INTO Addresses (AddressText,TownId)
VALUES ('Some address',1)
		,('Address',1)
		,('Some address',3)
		,('Some address',2)


--•	Departments (Id, Name)
CREATE TABLE Departments 
	(
		Id INT PRIMARY KEY IDENTITY(1,1)
		,[Name] NVARCHAR(30) NOT NULL
	)

INSERT INTO Departments([Name])
VALUES ('Departments1')
		,('Departments2')
		,('Departments3')
		,('Departments4')
--•	Employees (Id, FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary, AddressId)

CREATE TABLE Employees
	(
		Id INT PRIMARY KEY IDENTITY (1,1)
		,FirstName NVARCHAR(15) NOT NULL
		,MiddleName  NVARCHAR(15)
		,LastName NVARCHAR(15) NOT NULL
		,JobTitle  NVARCHAR(15) NOT NULL
		,DepartmentId INT FOREIGN KEY REFERENCES Departments(Id)
		,HireDate DATETIME NOT NULL
		,Salary DECIMAL (15,3) NOT NULL
		,AddressId INT FOREIGN KEY REFERENCES Addresses(Id)
	)

 