--Proble 12
SELECT 
	CountryName
	,IsoCode
FROM Countries
Where CountryName LIKE  '%a%a%a%'
ORDER BY IsoCode