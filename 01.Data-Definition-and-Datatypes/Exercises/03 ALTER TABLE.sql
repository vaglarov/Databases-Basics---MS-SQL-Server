--PROBLEM 03 ALTER TABLE FOREIGN KEY
ALTER TABLE Minions
	ADD TownId INT NOT NULL FOREIGN KEY REFERENCES Towns(Id)
	
ALTER TABLE Minions
ALTER COLUMN Age INT