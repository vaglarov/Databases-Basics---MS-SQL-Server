--PROBLEM 13
--Write a query that selects:
--•	CountryCode
--•	MountainRanges
--Filter the count of the mountain ranges in the United States, Russia and Bulgaria.

SELECT
	c.CountryCode
	,COUNT(c.CountryCode)
	FROM Countries AS c
	JOIN MountainsCountries AS mc ON c.CountryCode=mc.CountryCode
	JOIN Mountains AS m ON m.Id=mc.MountainId
	WHERE c.CountryCode IN ('BG','US','RU')
	GROUP BY c.CountryCode

