SELECT TOP 10
	P.Name
	,P.Description
	,AVG(F.Rate) AS [AverageRate]
	,COUNT(P.Name) AS [FeedbacksAmount]
	FROM Products AS P
	LEFT JOIN Feedbacks AS F ON P.Id=F.ProductId
	GROUP BY P.Name,P.Description
	ORDER BY [AverageRate] DESC,[FeedbacksAmount] DESC