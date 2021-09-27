tile0 = love.graphics.newImage("/visuels/blank.png")
tile1 = love.graphics.newImage("/visuels/floor.png")

function get_tile_by_id(id)
	if id == 1 then
		return tile1
	elseif id == 2 then
		return tile2
	else
		return tile0
	end
end