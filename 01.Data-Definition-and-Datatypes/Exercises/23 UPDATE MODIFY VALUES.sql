--Problem 23 

--Use Hotel database and decrease tax rate by 3% to all payments. Then select only TaxRate column from the Payments table. Submit your query statements as Prepare DB & Run queries.

UPDATE Payments
SET TaxRate -= TaxRate * 0.03
SELECT TaxRate FROM Payments