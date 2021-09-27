
function initSprites()

	-- PLAYER --
	spriteSheetPlayer = love.graphics.newImage("visuels/playerSprites.png")
	xOffset = 0
	yOffset = 32
	spritePlayer = love.graphics.newQuad(xOffset, yOffset, tile.sizeX, tile.sizeY, spriteSheetPlayer:getDimensions())
	
end
