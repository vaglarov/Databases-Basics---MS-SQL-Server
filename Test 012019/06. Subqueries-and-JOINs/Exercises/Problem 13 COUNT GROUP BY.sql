--Problem 13
--Write a query that selects:
--•	CountryCode
--•	MountainRanges
--Filter the count of the mountain ranges in the United States, Russia and Bulgaria.

SELECT 
	c.CountryCode
	,COUNT(*) AS MountainRanges
FROM Countries AS c
JOIN MountainsCountries AS mc ON c.CountryCode = mc.CountryCode
WHERE c.CountryCode IN('US', 'RU', 'BG')
GROUP BY c.CountryCode
