--Problem 16
CREATE DATABASE SoftUni

USE SoftUni

CREATE TABLE Towns (
[Id] INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(20)NOT NULL
 )
 --Addresses (Id, AddressText, TownId)
 CREATE TABLE Addresses  (
[Id] INT PRIMARY KEY IDENTITY,
[AddressText] NVARCHAR(20)NOT NULL,
[TownId] INT FOREIGN KEY REFERENCES Towns([Id])
 )
 --Departments (Id, Name)
 CREATE TABLE Departments
 (
 [Id] INT PRIMARY KEY IDENTITY,
 [Name] NVARCHAR (50) NOT NULL
 )

 --Employees (Id, FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary, AddressId)
CREATE TABLE Employees
(
[Id] INT PRIMARY KEY IDENTITY,
[FirstName] NVARCHAR(30),
[MiddleName] NVARCHAR(30),
[LastName] NVARCHAR(30),
[JobTitle] NVARCHAR(50) ,
[DepartmentId] INT FOREIGN KEY REFERENCES Departments([Id]),
[HireDate] DATETIME NOT NULL,
[Salary] DECIMAL (32,2) NOT NULL,
[AddressId] INT FOREIGN KEY REFERENCES Addresses([Id])
)