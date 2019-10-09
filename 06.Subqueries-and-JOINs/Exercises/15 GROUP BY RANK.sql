--PROBLEM 15
--Write a query that selects:
--•	ContinentCode
--•	CurrencyCode
--•	CurrencyUsage
--Find all continents and their most used currency.
--Filter any currency that is used in only one country. Sort your results by ContinentCode.

SELECT 
	tempTABLE.ContinentCode
	,tempTABLE.CurrencyCode
	,tempTABLE.CurrencyUsage AS MOST_USED_CURRENCY
	FROM (
			SELECT ContinentCode
					,CurrencyCode
					,COUNT(CurrencyCode) AS CurrencyUsage
					,DENSE_RANK() OVER (PARTITION BY ContinentCode ORDER BY COUNT(CurrencyCode) DESC) AS CurrencyRank
				FROM Countries
				GROUP BY ContinentCode, CurrencyCode
				HAVING COUNT(CurrencyCode) > 1) AS tempTABLE
	WHERE tempTABLE.CurrencyRank=1
	

