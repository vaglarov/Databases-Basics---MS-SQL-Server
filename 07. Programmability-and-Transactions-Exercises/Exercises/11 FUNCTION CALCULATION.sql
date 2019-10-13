--PROBLEM 11
--Your task is to create a function ufn_CalculateFutureValue 
--that accepts as parameters – sum (decimal), yearly interest rate (float) and number of years(int).
--It should calculate and return the future value of the initial sum rounded to the fourth digit after the decimal delimiter.
-- Using the following formula:

CREATE OR ALTER FUNCTION ufn_CalculateFutureValue 
(@sum DECIMAL(15,2), @yearlyInterestRate FLOAT, @numberOfYears INT)
 RETURNS DECIMAL(15, 4)
AS
BEGIN
 DECLARE @RESULT DECIMAL(15,4)
 SET @RESULT= @sum * (POWER(1 + @yearlyInterestRate, @numberOfYears));
 RETURN @RESULT 
END

GO

SELECT dbo.ufn_CalculateFutureValue(1000, 0.10, 5)