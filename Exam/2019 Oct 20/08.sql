SELECT 
	U.Username
	,C.Name
	--,U.Birthdate
	--,R.OpenDate
	FROM Reports AS R
	LEFT JOIN Users AS U ON R.UserId=U.Id
	LEFT JOIN Categories AS C ON R.CategoryId=C.Id
	WHERE FORMAT(U.Birthdate,'dd-MM')=FORMAT(R.OpenDate,'dd-MM')
	ORDER BY U.Username,C.Name