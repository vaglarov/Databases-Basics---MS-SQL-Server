--PROBLEM 18
--Write stored procedure usp_TransferMoney(SenderId, ReceiverId, Amount) 
--that transfers money from one account to another.
-- Make sure to guarantee valid positive MoneyAmount with precision up to fourth
--  sign after decimal point. 
--  Make sure that the whole procedure passes without errors and
--   if error occurs make no change in the database. 
--   You can use both: “usp_DepositMoney”, “usp_WithdrawMoney” 
--   (look at previous two problems about those procedures). 

CREATE PROC usp_TransferMoney(@SenderId INT, @ReceiverId INT, @Amount DECIMAL(15,2))
AS
BEGIN TRANSACTION
	EXEC usp_WithdrawMoney @SenderId, @Amount
	
	EXEC usp_DepositMoney @ReceiverId, @Amount
COMMIT

EXEC usp_TransferMoney 1, 2, 144

SELECT * FROM Accounts WHERE Id IN(1, 2)