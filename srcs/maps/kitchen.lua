-- local fstmap = {}

-- fstmap.grid = {
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
-- 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
-- }

local kitchen = {}

kitchen.grid = {
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	
}

function kitchenDraw()
	i = 1
	for y = 1, screenConf.sizeY, 1 do
		for x = 1, screenConf.sizeX, 1 do
			tile_id = kitchen.grid[i]
			love.graphics.setDefaultFilter("nearest","nearest")
			love.graphics.draw(get_tile_by_id(tile_id), (x - 1) * tile.sizeX, (y - 1) * tile.sizeY)
			i = i + 1
		end
	end
end

return kitchen
