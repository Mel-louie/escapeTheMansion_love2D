love.graphics.setDefaultFilter("nearest", "nearest")
tile0 = love.graphics.newImage("/visuels/kitchen/blank.png")
tile1 = love.graphics.newImage("/visuels/kitchen/floor.png")
tile2 = love.graphics.newImage("/visuels/kitchen/downwall.png")
tile3 = love.graphics.newImage("/visuels/kitchen/upwall.png")
tile4 = love.graphics.newImage("/visuels/kitchen/contourupleft.png")
tile5 = love.graphics.newImage("/visuels/kitchen/contourup.png")
tile6 = love.graphics.newImage("/visuels/kitchen/contourupright.png")
tile7 = love.graphics.newImage("/visuels/kitchen/contourlightleft.png")
tile8 = love.graphics.newImage("/visuels/kitchen/contourlighorangetleft.png")
tile9 = love.graphics.newImage("/visuels/kitchen/contourorangeleft.png")
tile10 = love.graphics.newImage("/visuels/kitchen/contourorangebrownleft.png")
tile11 = love.graphics.newImage("/visuels/kitchen/contourbrownleft.png")
tile12 = love.graphics.newImage("/visuels/kitchen/coinbrownleft.png")
tile13 = love.graphics.newImage("/visuels/kitchen/downbrown.png")
tile14 = love.graphics.newImage("/visuels/kitchen/14.png")
tile15 = love.graphics.newImage("/visuels/kitchen/15.png")
tile16 = love.graphics.newImage("/visuels/kitchen/16.png")
tile17 = love.graphics.newImage("/visuels/kitchen/17.png")
tile18 = love.graphics.newImage("/visuels/kitchen/18.png")
tile19 = love.graphics.newImage("/visuels/kitchen/19.png")
tile20 = love.graphics.newImage("/visuels/kitchen/20.png")
tile21 = love.graphics.newImage("/visuels/kitchen/21.png")
tile22 = love.graphics.newImage("/visuels/kitchen/bin.png")
tile23 = love.graphics.newImage("/visuels/kitchen/table1.png")
tile24 = love.graphics.newImage("/visuels/kitchen/table2.png")
tile25 = love.graphics.newImage("/visuels/kitchen/table3.png")
tile26 = love.graphics.newImage("/visuels/kitchen/fireplace1.png")
tile27 = love.graphics.newImage("/visuels/kitchen/fireplace2.png")
tile28 = love.graphics.newImage("/visuels/kitchen/fireplace3.png")
tile29 = love.graphics.newImage("/visuels/kitchen/buche2.png")
tile30 = love.graphics.newImage("/visuels/kitchen/buche1.png")
tile31 = love.graphics.newImage("/visuels/kitchen/fridge1.png")
tile32 = love.graphics.newImage("/visuels/kitchen/fridge2.png")
tile33 = love.graphics.newImage("/visuels/kitchen/fridge3.png")
tile34 = love.graphics.newImage("/visuels/kitchen/cuisine1.png")
tile35 = love.graphics.newImage("/visuels/kitchen/cuisine2.png")
tile36 = love.graphics.newImage("/visuels/kitchen/cuisine3.png")
tile37 = love.graphics.newImage("/visuels/kitchen/cuisine4.png")
tile38 = love.graphics.newImage("/visuels/kitchen/cuisine5.png")
tile39 = love.graphics.newImage("/visuels/kitchen/cuisine6.png")
tile40 = love.graphics.newImage("/visuels/kitchen/22.png")

function kitchenGetsTileById(id)
	
	if id == 1 then
		return tile1
	elseif id == 2 then
		return tile2
	elseif id == 3 then
		return tile3
	elseif id == 4 then
		return tile4
	elseif id == 5 then
		return tile5
	elseif id == 6 then
		return tile6
	elseif id == 7 then
		return tile7
	elseif id == 8 then
		return tile8
	elseif id == 9 then
		return tile9
	elseif id == 10 then
		return tile10
	elseif id == 11 then
		return tile11
	elseif id == 12 then
		return tile12
	elseif id == 13 then
		return tile13
	elseif id == 14 then
		return tile14
	elseif id == 15 then
		return tile15
	elseif id == 16 then
		return tile16
	elseif id == 17 then
		return tile17
	elseif id == 18 then
		return tile18
	elseif id == 19 then
		return tile19
	elseif id == 20 then
		return tile20
	elseif id == 21 then
		return tile21
	elseif id == 22 then
		return tile22
	elseif id == 23 then
		return tile23
	elseif id == 24 then
		return tile24
	elseif id == 25 then
		return tile25
	elseif id == 26 then
		return tile26
	elseif id == 27 then
		return tile27
	elseif id == 28 then
		return tile28
	elseif id == 29 then
		return tile29
	elseif id == 30 then
		return tile30
	elseif id == 31 then
		return tile31
	elseif id == 32 then
		return tile32
	elseif id == 33 then
		return tile33
	elseif id == 34 then
		return tile34
	elseif id == 35 then
		return tile35
	elseif id == 36 then
		return tile36
	elseif id == 37 then
		return tile37
	elseif id == 38 then
		return tile38
	elseif id == 39 then
		return tile39
	elseif id == 40 then
		return tile40
	else
		return tile0
	end
end