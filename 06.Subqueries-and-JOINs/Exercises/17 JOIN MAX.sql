--PROBLEM 17
--For each country, find the elevation of the highest peak and the length of the longest river,
-- sorted by the highest peak elevation (from highest to lowest), 
-- then by the longest river length (from longest to smallest), then by country name (alphabetically).
-- Display NULL when no data is available in some of the columns. Limit only the first 5 rows.

SELECT TOP(5) 
	c.CountryName
	,MAX(p.Elevation) AS HighestPeakElevation
	,MAX(r.Length) AS LongestRiverLength
FROM Countries AS c
LEFT JOIN CountriesRivers AS cr ON c.CountryCode = cr.CountryCode
LEFT JOIN Rivers AS r ON cr.RiverId = r.Id
LEFT JOIN MountainsCountries AS mc ON c.CountryCode = mc.CountryCode
LEFT JOIN Mountains AS m ON mc.MountainId = m.Id
LEFT JOIN Peaks AS p ON m.Id = p.MountainId
GROUP BY c.CountryName
ORDER BY HighestPeakElevation DESC, LongestRiverLength DESC, CountryName