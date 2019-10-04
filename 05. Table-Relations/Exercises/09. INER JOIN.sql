--PROBLEM 09
--Display all peaks for "Rila" mountain. Include:
--•	MountainRange
--•	PeakName
--•	Elevation
--Peaks should be sorted by elevation descending.

SELECT 
	M.MountainRange
	,PeakName
	,Elevation
	FROM Peaks AS P
	INNER JOIN Mountains  AS M ON M.Id=P.MountainId
	WHERE M.MountainRange ='Rila'
	ORDER BY Elevation DESC