--PROBLE 12 

SELECT *FROM Users

ALTER TABLE Users
DROP CONSTRAINT PK_CompositePK_Users

ALTER TABLE Users
ADD PRIMARY KEY (Id)

ALTER TABLE Users
ADD CONSTRAINT Username CHECK(DATALENGTH(Username)>=3)

ALTER TABLE Users
ADD UNIQUE (Username)
