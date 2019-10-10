--PROBLEM 08
--Select top 10 records from passengers along with the price for their tickets. 
--Order them by price (descending), first name (ascending) and last name (ascending).

SELECT TOP 10
	p.FirstName
	,p.LastName
	,t.Price
	FROM Passengers AS p
	JOIN Tickets AS t ON t.PassengerId=p.Id
	ORDER BY t.Price DESC, p.FirstName,p.LastName

