--PROBLEM 15

--Select all passengers who have flights. 
--Select their first name, last name, destination and price for the ticket.
--Take only the ticket with highest price for user. Order the results by price (descending), 
--first name (ascending), last name (ascending) and destination (ascending).

	SELECT k.FirstName, k.LastName, k.Destination, k.Price
  FROM (
	SELECT p.FirstName, p.LastName, f.Destination, t.Price,
		   DENSE_RANK() OVER(PARTITION BY p.FirstName, p.LastName ORDER BY t.Price DESC) As PriceRank
	  FROM Passengers AS p
	  JOIN Tickets AS t ON t.PassengerId = p.Id
	  JOIN Flights AS f ON f.Id = t.FlightId
  ) AS k 
  WHERE k.PriceRank = 1
  ORDER BY k.Price DESC, k.FirstName, k.LastName, k.Destination
	