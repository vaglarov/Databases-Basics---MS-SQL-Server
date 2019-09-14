--Problem 12
--•	CountryCode
--•	MountainRange
--•	PeakName
--•	Elevation
--Filter all peaks in Bulgaria with elevation over 2835. Return all the rows sorted by elevation in descending order.
SELECT	
	c.CountryCode
	,m.MountainRange
	,p.PeakName
	,p.Elevation
FROM Countries AS c
JOIN MountainsCountries AS temp ON c.CountryCode=temp.CountryCode
JOIN Mountains AS m ON temp.MountainId=m.Id
JOIN Peaks AS p ON m.Id=p.MountainId
WHERE p.Elevation>2835 AND c.CountryCode='BG'
ORDER BY p.Elevation DESC
