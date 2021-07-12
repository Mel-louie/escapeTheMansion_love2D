-- includes
-- require "path/to/includes"

-- array:

-- variable:

--------------------------------------------------------------------------------------------------------------------------------

-- LOVE functions basics
-- init the game, first function, like main i suppose
function	love.load()
	-- math.randomseed() function sets a seed for the pseudo-random generator: Equal seeds produce equal sequences of numbers. 
	-- A good 'seed' is os.time(), but wait a second before calling the function to obtain another sequence!
	-- os.time(): given a formatted date table, as used by os.date() return the time in system seconds.
	math.randomseed(os.time())
end

-- update the frames, loop 60x / sec, where the things exce on permanant basis are
-- dt = delta time, time between 2 frames, multiplies by this param to have all the moves at the same time, the frame time
function	love.update(dt)
	inputs_user(dt)
end

-- draw on the screen
function	love.draw()
	hello = "Hello"
	love.graphics.print(hello .. " world!", 25, 25)
end

--------------------------------------------------------------------------------------------------------------------------------

-- custom functions
function	inputs_user(dt)
	if love.keyboard.isDown("escape") then -- every key name is in the doc
		love.event.quit(42) -- exit and send the return value 42
		-- love.event.quit() -- exit without specific return value
		-- love.event.quit("restart") -- exit and restart
	end
end
