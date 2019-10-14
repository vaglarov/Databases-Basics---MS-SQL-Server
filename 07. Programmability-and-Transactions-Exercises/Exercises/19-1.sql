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

CREATE TRIGGER tr_RestrictedItems ON UserGameItems INSTEAD OF INSERT
AS
	DECLARE @itemId INT = (SELECT ItemId FROM inserted)	
	DECLARE @userGameId INT = (SELECT UserGameId FROM inserted)

	DECLARE @itemLevel INT = (SELECT MinLevel FROM Items WHERE Id = @itemId)	
	DECLARE @userGameLevel INT = (SELECT [Level] FROM UsersGames WHERE Id = @userGameId)

	IF(@userGameLevel < @itemLevel)
	BEGIN
		ROLLBACK
		RAISERROR('Insufficient user level!', 16, 1)
		RETURN
	END

	INSERT INTO UserGameItems(ItemId, UserGameId) VALUES
	(@itemId, @userGameId)
COMMIT

SELECT * 
FROM UserGameItems
WHERE UserGameId = 38 AND ItemId = 2

INSERT INTO UserGameItems(ItemId, UserGameId) VALUES
(2, 38)

SELECT * 
FROM UserGameItems
WHERE UserGameId = 38 AND ItemId = 14

INSERT INTO UserGameItems(ItemId, UserGameId) VALUES
(14, 38)