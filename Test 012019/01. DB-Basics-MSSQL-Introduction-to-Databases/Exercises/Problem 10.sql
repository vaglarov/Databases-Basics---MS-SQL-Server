USE SoftUniTESTDB

--Problem 8 

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

--Problem 9
ALTER TABLE Users
ADD CONSTRAINT PK_Users PRIMARY KEY ([Id],[Username]);

--Problem 10
ALTER TABLE Users
ADD CONSTRAINT CH_Password
CHECK (LEN ([Password]) >=5)


