--PROBLEM 12
--Write a query that selects:
--•	CountryCode
--•	MountainRange
--•	PeakName
--•	Elevation
--Filter all peaks in Bulgaria with elevation over 2835. Return all the rows sorted by elevation in descending order.

SELECT 
	c.CountryCode
	,m.MountainRange
	,p.PeakName
	,P.Elevation
	FROM Countries AS c
	JOIN MountainsCountries AS mc ON mc.CountryCode=c.CountryCode
	JOIN Mountains AS m ON m.Id=mc.MountainId
	JOIN Peaks AS p ON p.MountainId=m.Id
	WHERE p.Elevation>2835
	 AND c.CountryCode='BG'
	ORDER BY p.Elevation DESC 