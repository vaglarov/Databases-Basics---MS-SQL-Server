--PROBLEM 16
--Add stored procedure usp_DepositMoney (AccountId, MoneyAmount) 
--that deposits money to an existing account. 
--Make sure to guarantee valid positive MoneyAmount with precision up to fourth sign 
--after decimal point. 
--The procedure should produce exact results working with the specified precision.


CREATE PROC usp_DepositMoney(@AccountId INT, @MoneyAmount DECIMAL(15, 4)) 
AS
BEGIN TRANSACTION
	DECLARE @account INT = (SELECT Id FROM Accounts WHERE Id = @AccountId)

	IF(@account IS NULL)
	BEGIN
		ROLLBACK
		RAISERROR('Invalid account!', 16, 1)
		RETURN
	END

	IF(@MoneyAmount < 0)
	BEGIN
		ROLLBACK
		RAISERROR('Negative amount!', 16, 2)
		RETURN
	END

	UPDATE Accounts
	SET Balance += @MoneyAmount
	WHERE Id  = @AccountId

COMMIT

EXEC usp_DepositMoney 1, 10

SELECT * FROM Accounts
SELECT * FROM Logs
SELECT * FROM NotificationEmails