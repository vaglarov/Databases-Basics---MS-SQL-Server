--Problem 19
SELECT TOP(10)
	ProjectID AS [ID]
	,[Name]
	,[Description]
	,StartDate
	,EndDate
FROM Projects
ORDER BY StartDate ASC,[Name] ASC