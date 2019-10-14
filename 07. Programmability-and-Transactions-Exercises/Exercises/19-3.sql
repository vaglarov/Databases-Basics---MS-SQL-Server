--PROBLEM 19
--1.		 Users should not be allowed to buy items with higher level than their level. 
--			Create a trigger that restricts that.
--			The trigger should prevent inserting items that are above specified level 
--			while allowing all others to be inserted.

--2.		 Add bonus cash of 50000 to users: baleremuda, loosenoise, inguinalself, 
--		buildingdeltoid, monoxidecos in the game “Bali”.

--3.		 There are two groups of items that you must buy for the above users.
--		The first are items with id between 251 and 299 including. Second group are items with id 
--		between 501 and 539 including.
--		Take off cash from each user for the bought items.

--4.		 Select all users in the current game (“Bali”) with their items.
--		Display username, game name, cash and item name. Sort the result by username alphabetically,
--		 then by item name alphabetically. 

CREATE PROC usp_BuyItems(@UserId INT, @ItemId INT, @GameId INT)
AS
BEGIN TRANSACTION
	DECLARE @User INT = (SELECT Id FROM Users WHERE Id = @UserId)
	DECLARE @Item INT = (SELECT Id FROM Items WHERE Id = @ItemId)
	DECLARE @Game INT = (SELECT Id FROM Games WHERE Id = @GameId)
	DECLARE @UserGameId INT = (SELECT Id FROM UsersGames 
							   WHERE UserId = @UserId AND GameId = @GameId)

	IF(@User IS NULL OR @Item IS NULL OR @Game IS NULL OR @UserGameId IS NULL)
	BEGIN
		ROLLBACK
		RAISERROR('User, Item or Game does not exist!', 16, 1)
		RETURN
	END

	DECLARE @UserCash DECIMAL(15, 2) = (SELECT Cash 
										FROM UsersGames 
										WHERE Id = @UserGameId)
	DECLARE @ItemPrice DECIMAL(15, 2) = (SELECT Price FROM Items WHERE Id = @Item)

	IF(@UserCash - @ItemPrice < 0)
	BEGIN
		ROLLBACK
		RAISERROR('Insufficient fund!', 16, 2)
		RETURN
	END

	UPDATE UsersGames
	SET Cash -= @ItemPrice
	WHERE Id = @UserGameId

	INSERT INTO UserGameItems(ItemId, UserGameId) VALUES
	(@Item, @UserGameId)
COMMIT

SELECT * 
FROM UsersGames 
WHERE GameId = 212

SELECT Id
FROM Users
WHERE Username IN ('baleremuda', 'loosenoise', 'inguinalself', 'buildingdeltoid', 'monoxidecos')

DECLARE @counter INT = 251

WHILE(@counter <= 299)
BEGIN
	EXEC usp_BuyItems 12, @counter, 212
	EXEC usp_BuyItems 22, @counter, 212
	EXEC usp_BuyItems 37, @counter, 212
	EXEC usp_BuyItems 52, @counter, 212
	EXEC usp_BuyItems 61, @counter, 212

	SET @counter += 1
END

SET @counter = 501

WHILE(@counter <= 539)
BEGIN
	EXEC usp_BuyItems 12, @counter, 212
	EXEC usp_BuyItems 22, @counter, 212
	EXEC usp_BuyItems 37, @counter, 212
	EXEC usp_BuyItems 52, @counter, 212
	EXEC usp_BuyItems 61, @counter, 212

	SET @counter += 1
END