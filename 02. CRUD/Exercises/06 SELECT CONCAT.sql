--PROBLEM 06
--Write a SQL query to find the email address of each employee. (By his first and last name). Consider that the email domain is softuni.bg. Emails should look like “John.Doe@softuni.bg". The produced column should be named "Full Email Address". 
SELECT
	FirstName+'.'+LastName+'@softuni.bg' AS 'Full Email Address'
	FROM Employees