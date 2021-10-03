-- local fstmap = {}

-- fstmap.grid = {
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
-- 	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
-- }

local kitchen = {}

kitchen.grid = {

	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
	00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,
	00,00,00,00,00,00,00,00,00,04,05,05,05,05,05,05,05,05,06,00,
	00,00,00,00,00,00,00,00,00,07,03,28,03,03,39,36,33,03,17,00,
	00,00,00,00,00,00,00,00,00,08,02,27,30,02,38,35,32,02,18,00,
	00,00,00,00,00,00,00,00,00,40,01,26,29,01,37,34,31,22,19,00,
	00,00,00,00,00,00,00,00,00,01,01,01,01,01,01,01,01,01,19,00,
	00,00,00,00,00,00,00,00,00,01,01,01,01,23,24,25,01,01,20,00,
	00,00,00,00,00,00,00,00,00,14,01,01,01,01,01,01,01,01,21,00,
	00,00,00,00,00,00,00,00,00,11,01,01,01,01,01,01,01,01,21,00,
	00,00,00,00,00,00,00,00,00,12,13,13,14,01,01,15,13,13,16,00

}

function kitchenUpdate(dt, playerPosX, playerPosY)
	if check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 17.5*tile.sizeX, 9*tile.sizeY, 1*tile.sizeX, 0.25*tile.sizeY) or
	check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 13.25*tile.sizeX, 11.1*tile.sizeY, 2.5*tile.sizeX, 0.2*tile.sizeY) or
	check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 11.25*tile.sizeX, 8.9*tile.sizeY, 0.5*tile.sizeX, 0.2*tile.sizeY) then
		return 0
		
	elseif check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 11*tile.sizeX, 9.5*tile.sizeY, 6*tile.sizeX, 3.5*tile.sizeY) or 
	check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 9.75*tile.sizeX, 10.5*tile.sizeY, 1*tile.sizeX, 0.5*tile.sizeY) or
	check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 13.75*tile.sizeX, 13.5*tile.sizeY, 0.5*tile.sizeX, 0.5*tile.sizeY) then
		return 1
	
	else
		return 0
	end
end

function kitchenDraw(shader)
	love.graphics.setShader(shader)
	kitchenShader()

	i = 1
	for y = 1, screenConf.sizeY, 1 do
		for x = 1, screenConf.sizeX, 1 do
			tile_id = kitchen.grid[i]
			
			love.graphics.draw(kitchenGetsTileById(tile_id), (x - 1) * tile.sizeX, (y - 1) * tile.sizeY)
			i = i + 1
		end
	end
	love.graphics.setShader()
	
	-- -- floor
	-- love.graphics.rectangle("line", 11*tile.sizeX, 9.5*tile.sizeY, 6*tile.sizeX, 3.5*tile.sizeY)
	-- bin
	-- love.graphics.rectangle("line", 17.5*tile.sizeX, 9*tile.sizeY, 1*tile.sizeX, 0.25*tile.sizeY)
	-- -- exit down
	-- love.graphics.rectangle("line", 13.75*tile.sizeX, 13.5*tile.sizeY, 0.5*tile.sizeX, 0.5*tile.sizeY)
	-- -- exit side
	-- love.graphics.rectangle("line", 9.75*tile.sizeX, 10.5*tile.sizeY, 1*tile.sizeX, 0.5*tile.sizeY)
	-- -- table
	-- love.graphics.rectangle("line", 13.25*tile.sizeX, 11.1*tile.sizeY, 2.5*tile.sizeX, 0.2*tile.sizeY)
	-- -- fireplace
	-- love.graphics.rectangle("line", 11.25*tile.sizeX, 8.9*tile.sizeY, 0.5*tile.sizeX, 0.2*tile.sizeY)

end

function kitchenTexts()
	if (yOffset == 0 and check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 17.8*tile.sizeX, 9.1*tile.sizeY, 1*tile.sizeX, 0.25*tile.sizeY)) or (yOffset == tile.sizeY * 2 and check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 17.3*tile.sizeX, 8.7*tile.sizeY, 1*tile.sizeX, 0.25*tile.sizeY)) then
		love.graphics.print("the bin is empty...", 10, 10)
	end
	if (yOffset == 0 and check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 11.60*tile.sizeX, 8.9*tile.sizeY, 0.1*tile.sizeX, 0.25*tile.sizeY)) then
		love.graphics.print("this fire is weird\nlooks liks it sings", 10, 10)
	end
end

return kitchen
