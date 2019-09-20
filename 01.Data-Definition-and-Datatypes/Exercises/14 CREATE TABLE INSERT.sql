--Problem 14
CREATE DATABASE CarRental
USE CarRental

--•	Categories (Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)

CREATE TABLE Categories
(
  Id          INT PRIMARY KEY IDENTITY,
  Name        NVARCHAR(20)   NOT NULL,
  DailyRate   DECIMAL(15, 2) NOT NULL,
  WeeklyRate  DECIMAL(15, 2) NOT NULL,
  MonthlyRate DECIMAL(15, 2) NOT NULL,
  WeekendRate DECIMAL(15, 2) NOT NULL,
)
--•	Cars (Id, PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available)

CREATE TABLE Cars
(
  Id           INT PRIMARY KEY IDENTITY,
  Plate        NVARCHAR(8) NOT NULL,
  Manufacturer VARCHAR(20) NOT NULL,
  Model        VARCHAR(20) NOT NULL,
  Year         DATETIME    NOT NULL,
  CategoryId   INT         NOT NULL FOREIGN KEY (CategoryId) REFERENCES Categories (Id),
  Doors        INT         NOT NULL,
  Picture      VARBINARY(6000),
  Condition    NVARCHAR(1000),
  Available    BIT         NOT NULL,
)

--•	Customers (Id, DriverLicenceNumber, FullName, Address, City, ZIPCode, Notes)
CREATE TABLE Customers
(
  Id                  INT PRIMARY KEY IDENTITY,
  DriverLicenseNumber VARCHAR(16)  NOT NULL,
  FullName            NVARCHAR(50) NOT NULL,
  Address             NVARCHAR(80) NOT NULL,
  City                NVARCHAR(30) NOT NULL,
  ZipCode             INT          NOT NULL
    CONSTRAINT CHK_ZIPCODE_LENGTH CHECK (LEN(ZipCode) >= 4 AND LEN(ZipCode) <= 6),
  Notes               NVARCHAR(80)
)
--•	Employees (Id, FirstName, LastName, Title, Notes)

CREATE TABLE Employees
(
  Id        INT PRIMARY KEY IDENTITY,
  FirstName NVARCHAR(30) NOT NULL,
  LastName  NVARCHAR(30) NOT NULL,
  Title     NVARCHAR(20) NOT NULL,
  Notes     NVARCHAR(200)
)
--•	RentalOrders (Id, EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes)
CREATE TABLE RentalOrders
(
  Id               INT PRIMARY KEY IDENTITY,
  EmployeeId       INT            NOT NULL
    CONSTRAINT FK_EmployeeId_Emloyees FOREIGN KEY (EmployeeId) REFERENCES Employees (Id),
  CustomerId       INT            NOT NULL
    CONSTRAINT FK_CustomerId_Customers FOREIGN KEY (CustomerId) REFERENCES Customers (Id),
  CarId            INT            NOT NULL
    CONSTRAINT FK_CarId_Cars FOREIGN KEY (CarId) REFERENCES Cars (Id),
  TankLevel        INT            NOT NULL,
  KilometrageStart DECIMAL(15, 2) NOT NULL,
  KilometrageEnd   DECIMAL(15, 2) NOT NULL,
  TotalKilometrage DECIMAL(15, 2) NOT NULL,
  StartDate        DATETIME2      NOT NULL,
  EndDate          DATETIME2      NOT NULL,
  TotalDays        INT            NOT NULL,
  RateApplied      DECIMAL(15, 2) NOT NULL,
  TaxApplied       DECIMAL(15, 2) NOT NULL,
  OrderStatus      NVARCHAR(20)   NOT NULL,
  Notes            NVARCHAR(200),
)

INSERT INTO Categories(Name, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
VALUES ('Exotic', 220.33, 1102.44, 4000, 390.12),
       ('VIP', 200.44, 800, 3000, 240.33),
       ('Budget', 90.44, 400, 800, 170)

INSERT INTO Cars(Plate, Manufacturer, Model, Year, CategoryId, Doors, Picture, Condition, Available)
VALUES ('CSS070', 'Honda', 'Civic', '08-03-1997', 3, 3, 12412, 'Excellent', 1),
       ('CB212AN', 'MB', 'EClass', '2005', 2, 4, 1241, 'Good', 1),
       ('12441', 'Aston Martin', 'Vantage', '2011', 1, 2, 2312, 'Perfect', 0)

INSERT INTO Customers(DriverLicenseNumber, FullName, Address, City, ZipCode, Notes)
VALUES ('0021x', 'Petko Petkov', 'adress1', 'Sofia', 1220, NULL),
       ('AW212', 'Mimi Marinova', 'address2', 'Varna', 2121, 'IDK'),
       ('QQ212X', 'Alexandra Elenova', 'address3', 'Plovdinv', 1000, NULL)

INSERT INTO Employees(FirstName, LastName, Title, Notes)
VALUES ('Andrey', 'Andreev', 'CEO', 'None'),
       ('Maraya', 'Lilova', 'Manager', 'NULL'),
       ('Bogdan', 'Spasov', 'Sales', 'NULL')

INSERT INTO RentalOrders(EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage,
                         StartDate, EndDate, TotalDays, RateApplied, TaxApplied, OrderStatus, Notes)
VALUES (1, 1, 1, 40, 220.43, 290.11, 14131.13, '07-01-2019', '09-01-2019', 2, 2.3, 1.1, 'Done', 'SomeText'),
       (2, 2, 2, 100, 222, 333, 4444, '02-01-2019', '07-01-2019', 5, 2, 2, 'Done', NULL),
       (3, 3, 3, 60, 444, 888, 34444, '03-01-2019', '11-01-2019', 8, 2, 2, 'Done', NULL)