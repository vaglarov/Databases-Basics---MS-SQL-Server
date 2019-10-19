

		CREATE VIEW v_UserWithCountries AS 
		SELECT
		CUST.FirstName+' '+CUST.LastName AS [CustomerName]
		,Age
		,Gender
		,C.Name
		FROM Customers AS CUST
		LEFT JOIN Countries AS C ON CUST.CountryId=C.Id

