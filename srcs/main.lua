require "player"
require "shaderEngine"
require "fire"
require "initGame"
require "simpleScale"
require "maps/kitchen"
require "maps/tiles"

shader = nil
message = 0
--------------------------------------------------------------------------------------------------------------------------------
-- LOVE functions basics
--------------------------------------------------------------------------------------------------------------------------------

-- init the game, first function, like main i suppose
function	love.load()
	-- math.randomseed() function sets a seed for the pseudo-random generator: Equal seeds produce equal sequences of numbers. 
	-- A good 'seed' is os.time(), but wait a second before calling the function to obtain another sequence!
	-- os.time(): given a formatted date table, as used by os.date() return the time in system seconds.
	math.randomseed(os.time())

	shader = love.graphics.newShader(shader_code)
	
	-- love.graphics.setBackgroundColor(1,1,1)
	love.graphics.setNewFont(11)
	reScaling()
	love.graphics.setDefaultFilter("nearest","nearest")
	
	text = nil
	love.keyboard.setKeyRepeat(false)
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
	if scene ~= "Menu" then
		ret = inputsGame(dt)
		-- player animation
		if  ret == 1 then
			playerAnimation(dt)
		end
	end
	
end

-- draw on the screen
function	love.draw()
	simpleScale.set()
	
	if scene == "kitchen" then
		kitchenDraw(shader)
		kitchenTexts()
	end

	love.graphics.draw(spriteSheetPlayer, spritePlayer, playerPosX, playerPosY, playerRad, 1, 1, playerWeight/2, playerHigh/2)
	love.graphics.draw(spriteSheetFire, spriteFire, firePosX, firePosY, fireRad, 1, 1, fireWeight/2, fireHigh/2)
	simpleScale.unSet()
end

-- function love.keypressed( key )
-- end

--  function love.keyreleased( key )
--  end

--------------------------------------------------------------------------------------------------------------------------------
-- custom functions
--------------------------------------------------------------------------------------------------------------------------------

function	inputsGame(dt)
	if love.keyboard.isDown("escape") then -- every key name is in the doc
		love.event.quit(42) -- exit and send the return value 42
		-- love.event.quit() -- exit without specific return value
		return 0
	elseif love.keyboard.isDown("r") then
		love.event.quit("restart") -- exit and restart
		return 0
	end
	
	if love.keyboard.isDown("right")  then
		canMove = kitchenUpdate(dt, (playerPosX + playerSpeed * dt), playerPosY) 
		yOffset = tile.sizeY * 2
		if canMove == 1 then
			playerPosX = playerPosX + playerSpeed * dt
		end
		return 1
	elseif love.keyboard.isDown("left") then
		canMove = kitchenUpdate(dt, (playerPosX - playerSpeed * dt), playerPosY) 
		yOffset = tile.sizeY * 3
		if canMove == 1 then
			playerPosX = playerPosX - playerSpeed * dt
		end
		return 1
	elseif love.keyboard.isDown("up") then
		canMove = kitchenUpdate(dt, playerPosX, (playerPosY - playerSpeed * dt))
		yOffset = 0
		if canMove == 1 then
			playerPosY = playerPosY - playerSpeed * dt
		end
		return 1
	elseif love.keyboard.isDown("down") then
		canMove = kitchenUpdate(dt, playerPosX, (playerPosY + playerSpeed * dt))
		yOffset = tile.sizeY
		if canMove == 1 then
			playerPosY = playerPosY + playerSpeed * dt
		end
		return 1
	end

	return 0
end
