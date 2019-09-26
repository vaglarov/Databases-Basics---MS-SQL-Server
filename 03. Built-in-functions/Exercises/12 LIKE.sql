--PROBLEM 12

--Find all countries that holds the letter 'A' in their name at least 3 times (case insensitively), sorted by ISO code. 
--Display the country name and ISO code. 

SELECT 
	CountryName
	,IsoCode
	FROM Countries
	WHERE [CountryName] LIKE '%A%A%A%'
	ORDER BY IsoCode 