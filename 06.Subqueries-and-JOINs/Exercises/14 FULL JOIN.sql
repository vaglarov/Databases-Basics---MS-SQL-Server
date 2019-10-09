--PROBLEM 14
--Write a query that selects:
--•	CountryName
--•	RiverName
--Find the first 5 countries with or without rivers in Africa. Sort them by CountryName in ascending order.

SELECT TOP 5
	c.CountryName
	,RiverName
	FROM Countries AS c
	FULL JOIN CountriesRivers AS cr ON c.CountryCode=cr.CountryCode
	FULL JOIN Rivers AS r ON cr.RiverId=r.Id
	WHERE c.ContinentCode ='AF'
	ORDER BY c.CountryName

