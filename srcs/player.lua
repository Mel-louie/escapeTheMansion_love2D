
function initPlayerSprites()

	-- PLAYER --
	spriteSheetPlayer = love.graphics.newImage("visuels/playerSprites.png")
	xOffset = 0
	yOffset = 32
	spritePlayer = love.graphics.newQuad(xOffset, yOffset, tile.sizeX, tile.sizeY, spriteSheetPlayer:getDimensions())
	
end

function initPlayer()
	playerPosX = 400
	playerPosY = 300
	playerRad = math.rad(0)
	playerWeight = tile.sizeX
	playerHigh = tile.sizeY
	playerSpeed = 150
	playerAnimtime = 0.1
	playerFrame = 0
	playerMaxFrame = 3
end

function playerAnimation(dt)
	playerAnimtime = playerAnimtime - dt
	if playerAnimtime <= 0 then 
		playerAnimtime = 0.1
		playerFrame = playerFrame + 1
		if playerFrame > playerMaxFrame then
			playerFrame = 0
		end
		xOffset = playerFrame * tile.sizeX
	-- setViewport: met à jour le quad avec la nouvelle valeur de yOffset
		spritePlayer:setViewport(xOffset, yOffset, tile.sizeX, tile.sizeY)
	end
end
