--PROBLEM 13
--Select all passengers and their count of trips. Select the first name, last name and count of trips. 
--Order the results by total trips (descending), first name (ascending) and last name (ascending).

SELECT 
	p.FirstName
	,p.LastName
	,COUNT(t.Id) AS TotalTrips
    FROM Passengers AS p
LEFT JOIN Tickets AS t ON t.PassengerId = p.Id
GROUP BY p.FirstName, p.LastName
ORDER BY TotalTrips DESC, p.FirstName, p.LastName

