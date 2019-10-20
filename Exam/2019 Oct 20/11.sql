CREATE OR ALTER FUNCTION udf_HoursToComplete 
(@StartDate DATETIME, @EndDate DATETIME)
 RETURNS INT
AS
BEGIN
 DECLARE @RESULT INT
 SET @RESULT= DATEDIFF(HOUR, @StartDate, @EndDate) 

 RETURN ISNULL(@RESULT ,'0')
END


SELECT dbo.udf_HoursToComplete(OpenDate, CloseDate) AS TotalHours
   FROM Reports
