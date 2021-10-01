require "player"
require "fire"
require "initGame"
require "simpleScale"
require "maps/kitchen"
require "maps/kitchenTiles"

--------------------------------------------------------------------------------------------------------------------------------
-- LOVE functions basics
--------------------------------------------------------------------------------------------------------------------------------

-- init the game, first function, like main i suppose
function	love.load()
	-- math.randomseed() function sets a seed for the pseudo-random generator: Equal seeds produce equal sequences of numbers. 
	-- A good 'seed' is os.time(), but wait a second before calling the function to obtain another sequence!
	-- os.time(): given a formatted date table, as used by os.date() return the time in system seconds.
	math.randomseed(os.time())

	-- makes the images "clean" and not blurry when rescale the window
	
	love.graphics.setBackgroundColor(1,1,1)
	
	reScaling()
	love.graphics.setDefaultFilter("nearest","nearest")
	
	initPlayer()
	initPlayerSprites()
	
	initFire()
	initFireSprites()
end

-- update the frames, loop 60x / sec, where the things exce on permanant basis are
-- dt = delta time, time between 2 frames, multiplies by this param to have all the moves at the same time, the frame time
function	love.update(dt)

	simpleScale.resizeUpdate()
	
	fireAnimation(dt)

	ret = inputs_user(dt)
	-- player animation
	if  ret == 1 then
		playerAnimation(dt)
	end

end

-- draw on the screen
function	love.draw()
	simpleScale.set()
	kitchenDraw()
	
	love.graphics.draw(spriteSheetPlayer, spritePlayer, playerPosX, playerPosY, playerRad, 1, 1, playerWeight/2, playerHigh/2)
	
	love.graphics.draw(spriteSheetFire, spriteFire, firePosX, firePosY, fireRad, 1, 1, fireWeight/2, fireHigh/2)
	
	simpleScale.unSet()
end

--------------------------------------------------------------------------------------------------------------------------------
-- custom functions
--------------------------------------------------------------------------------------------------------------------------------

function	inputs_user(dt)
	if love.keyboard.isDown("escape") then -- every key name is in the doc
		love.event.quit(42) -- exit and send the return value 42
		-- love.event.quit() -- exit without specific return value
		-- love.event.quit("restart") -- exit and restart
		return 0
	end

	if love.keyboard.isDown("right")  then
		canMove = kitchenUpdate(dt, (playerPosX + playerSpeed * dt), playerPosY) 
		if canMove == 1 then
			playerPosX = playerPosX + playerSpeed * dt
			yOffset = tile.sizeY * 2
		end
		return 1
	elseif love.keyboard.isDown("left") then
		canMove = kitchenUpdate(dt, (playerPosX - playerSpeed * dt), playerPosY) 
		if canMove == 1 then
			playerPosX = playerPosX - playerSpeed * dt
			yOffset = tile.sizeY * 3
		end
		return 1
	elseif love.keyboard.isDown("up") then
		canMove = kitchenUpdate(dt, playerPosX, (playerPosY - playerSpeed * dt))
		if canMove == 1 then
			playerPosY = playerPosY - playerSpeed * dt
			yOffset = 0
		end
		return 1
	elseif love.keyboard.isDown("down") then
		canMove = kitchenUpdate(dt, playerPosX, (playerPosY + playerSpeed * dt))
		if canMove == 1 then
			playerPosY = playerPosY + playerSpeed * dt
			yOffset = tile.sizeY
		end
		return 1
	end

	return 0
end
