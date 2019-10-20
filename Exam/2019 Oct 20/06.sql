SELECT
	R.Description
	,C.Name
	FROM Reports AS R
	JOIN Categories AS C ON R.CategoryId=C.Id
	ORDER BY R.Description,C.Name