--Problem 09 MODIFY PK

ALTER TABLE Users
DROP CONSTRAINT PK__Users__3214EC07C20D7D2F

ALTER TABLE Users
ADD CONSTRAINT PK_CompositePK_Users PRIMARY KEY (Id,Username)