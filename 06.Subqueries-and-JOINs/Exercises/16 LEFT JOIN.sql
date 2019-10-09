--PROBLEM 16
--Find all the count of all countries, which don’t have a mountain.

SELECT 
	COUNT(c.CountryName)
	FROM Countries AS c
	LEFT JOIN MountainsCountries AS mc ON c.CountryCode=mc.CountryCode
	WHERE  MC.CountryCode IS NULL