
function initPlayer()
	playerPosX = 200
	playerPosY = 200
	playerRad = math.rad(0)
	playerWeight = 32
	playerHigh = 32
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
		xOffset = playerFrame * 32
	-- setViewport: met à jour le quad avec la nouvelle valeur de yOffset
		spritePlayer:setViewport(xOffset, yOffset, 32, 32)
	end
end
