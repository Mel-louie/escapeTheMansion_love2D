
function initSprites()

	-- PLAYER --
	spriteSheetPlayer = love.graphics.newImage("visuels/playerSprites.png")
	xOffset = 0
	yOffset = 32
	spritePlayer = love.graphics.newQuad(xOffset, yOffset, 32, 32, spriteSheetPlayer:getDimensions())
	
end
