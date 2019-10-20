UPDATE Reports
SET CloseDate = GETDATE()
WHERE CloseDate IS NULL


DELETE Reports
WHERE StatusId=4