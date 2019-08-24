USE SoftUniTESTDB

--Problem 8 
--Using SQL query create table Users with columns:
--•	Id – unique number for every user. There will be no more than 263-1 users. (Auto incremented)
--•	Username – unique identifier of the user will be no more than 30 characters (non Unicode). (Required)
--•	Password – password will be no longer than 26 characters (non Unicode). (Required)
--•	ProfilePicture – image with size up to 900 KB. 
--•	LastLoginTime
--•	IsDeleted – shows if the user deleted his/her profile. Possible states are true or false.
--Make Id primary key. Populate the table with exactly 5 records. Submit your CREATE and INSERT statements as Run queries & check DB.

CREATE TABLE Users(
[Id] BIGINT IDENTITY (1,1),
[Username] NVARCHAR(30) NOT NULL,
[Password]NVARCHAR(26) NOT NULL,
[ProfilePicture] VARBINARY(900) NULL,
[LastLoginTime] DATETIME NOT NULL,
[IsDeleted] BIT,
)

INSERT INTO Users([Username],[Password],[ProfilePicture],[LastLoginTime],[IsDeleted])
VALUES
('Boyan4o','password', 191, '1990-06-22',1),
('Boyan4o1','password', 191, '1990-06-22',0),
('Boyan4o1','password', 191, '1990-06-22',1),
('Boyan4o1','password', 191, '1990-06-22',0),
('Boyan4o1','password', 191, '1990-06-22',0)



