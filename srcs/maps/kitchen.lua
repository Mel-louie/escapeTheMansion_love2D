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
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,4,5,5,5,5,5,5,5,5,6,0,
	0,0,0,0,0,0,0,0,0,7,3,28,3,3,39,36,33,3,17,0,
	0,0,0,0,0,0,0,0,0,8,2,27,30,2,38,35,32,2,18,0,
	0,0,0,0,0,0,0,0,0,40,1,26,29,1,37,34,31,22,19,0,
	0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,19,0,
	0,0,0,0,0,0,0,0,0,1,1,1,1,23,24,25,1,1,20,0,
	0,0,0,0,0,0,0,0,0,14,1,1,1,1,1,1,1,1,21,0,
	0,0,0,0,0,0,0,0,0,11,1,1,1,1,1,1,1,1,21,0,
	0,0,0,0,0,0,0,0,0,12,13,13,14,1,1,15,13,13,16,0
	
}

function kitchenUpdate(dt, playerPosX, playerPosY)
	if check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 17.5*tile.sizeX, 8*tile.sizeY, 1*tile.sizeX, 0.25*tile.sizeY) or
	check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 13.25*tile.sizeX, 10.1*tile.sizeY, 2.5*tile.sizeX, 0.2*tile.sizeY) or
	check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 11.25*tile.sizeX, 7.9*tile.sizeY, 0.5*tile.sizeX, 0.2*tile.sizeY) then
		return 0
		
	elseif check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 11*tile.sizeX, 8.5*tile.sizeY, 6*tile.sizeX, 3.5*tile.sizeY) or 
	check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 9.75*tile.sizeX, 9.5*tile.sizeY, 1*tile.sizeX, 0.5*tile.sizeY) or
	check_collision(playerPosX - (tile.sizeX / 2), playerPosY - (tile.sizeY / 2), tile.sizeX, tile.sizeY, 13.75*tile.sizeX, 12.5*tile.sizeY, 0.5*tile.sizeX, 0.5*tile.sizeY) then
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
	-- love.graphics.rectangle("line", 11*tile.sizeX, 8.5*tile.sizeY, 6*tile.sizeX, 3.5*tile.sizeY)
	-- -- bin
	-- love.graphics.rectangle("line", 17.5*tile.sizeX, 8*tile.sizeY, 1*tile.sizeX, 0.25*tile.sizeY)
	-- -- exit down
	-- love.graphics.rectangle("line", 13.75*tile.sizeX, 12.5*tile.sizeY, 0.5*tile.sizeX, 0.5*tile.sizeY)
	-- -- exit side
	-- love.graphics.rectangle("line", 9.75*tile.sizeX, 9.5*tile.sizeY, 1*tile.sizeX, 0.5*tile.sizeY)
	-- -- table
	-- love.graphics.rectangle("line", 13.25*tile.sizeX, 10.1*tile.sizeY, 2.5*tile.sizeX, 0.2*tile.sizeY)
	-- -- fireplace
	-- love.graphics.rectangle("line", 11.25*tile.sizeX, 7.9*tile.sizeY, 0.5*tile.sizeX, 0.2*tile.sizeY)

end

return kitchen
