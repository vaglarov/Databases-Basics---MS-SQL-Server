--PROBLEM 15
--Create another table � NotificationEmails(Id, Recipient, Subject, Body). 
--Add a trigger to logs table and create new email whenever new record is inserted
-- in logs table. The following data is required to be filled for each email:
--�	Recipient � AccountId
--�	Subject � �Balance change for account: {AccountId}�
--�	Body - �On {date} your balance was changed from {old} to {new}.�
--Submit your query only for the trigger action.

CREATE TABLE NotificationEmails
(
	Id INT PRIMARY KEY IDENTITY, 
	Recipient INT, 
	[Subject] VARCHAR(MAX), 
	Body VARCHAR(MAX)
)
GO

CREATE TRIGGER tr_InsertEmail ON Logs FOR INSERT
AS
	DECLARE @recipient INT = (SELECT AccountId FROM inserted)

	DECLARE @subject VARCHAR(MAX) = 'Balance change for account: ' + 
			CAST((SELECT AccountId FROM inserted) AS VARCHAR(20))

	DECLARE @body VARCHAR(MAX) = 'On ' + CAST(GETDATE() AS varchar(MAX)) + 
			' your balance was changed from ' + 
			CAST((SELECT OldSum FROM Logs) AS varchar(20)) + ' to ' + 
			CAST((SELECT NewSum FROM Logs) AS varchar(20)) + '.'

	INSERT INTO NotificationEmails(Recipient, [Subject], Body) VALUES
	(@recipient, @subject, @body)

UPDATE Accounts
SET Balance += 100
WHERE Id = 2

SELECT * FROM Logs
SELECT * FROM NotificationEmails
