--PROBLEM 13
--Combine all peak names with all river names,
-- so that the last letter of each peak name is the same as the first letter of its corresponding river name. 
-- Display the peak names, river names, and the obtained mix (mix should be in lowercase). 
-- Sort the results by the obtained mix.
SELECT 
	p.PeakName
	,r.RiverName
	,LOWER(CONCAT(p.PeakName, SUBSTRING(r.RiverName, 2, LEN(r.RiverName)))) AS Mix
FROM Peaks AS p,
     Rivers AS r
WHERE RIGHT(p.PeakName, 1) = LEFT(r.RiverName, 1)
ORDER BY Mix