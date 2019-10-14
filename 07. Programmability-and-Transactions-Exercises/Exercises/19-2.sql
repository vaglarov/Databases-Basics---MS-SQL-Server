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

SELECT u.Username, ug.Cash, g.Id
FROM Users AS u
JOIN UsersGames AS ug ON u.Id = ug.UserId
JOIN Games AS g ON ug.GameId = g.Id
WHERE g.Id IN (SELECT Id FROM Games WHERE [Name] = 'Bali') AND 
	  u.Id IN (SELECT Id FROM Users WHERE Username IN 
	  ('baleremuda', 'loosenoise', 'inguinalself', 'buildingdeltoid', 'monoxidecos'))

UPDATE UsersGames
SET Cash += 50000 
WHERE GameId IN (SELECT Id FROM Games WHERE [Name] = 'Bali') AND 
	  UserId IN (SELECT Id FROM Users WHERE Username IN 
	  ('baleremuda', 'loosenoise', 'inguinalself', 'buildingdeltoid', 'monoxidecos'))