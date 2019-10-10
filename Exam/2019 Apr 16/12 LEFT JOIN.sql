--PROBLEM 12
--Select all passengers who don't have luggage's. Select their passport id and address. 
--Order the results by passport id (ascending) and address (ascending).


SELECT 
	p.PassportId
	,p.Address
	FROM Passengers AS p
	LEFT JOIN Luggages AS l ON P.Id=L.PassengerId
	WHERE l.Id IS NULL
	ORDER BY p.PassportId, p.Address