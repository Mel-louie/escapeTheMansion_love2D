
function initFire()
	firePosX = 369
	firePosY = 286
	fireRad = math.rad(0)
	fireWeight = 16
	fireHigh = 14
	fireSpeed = 150
	fireAnimtime = 0.2
	fireFrame = 0
	fireMaxFrame = 4
end

function initFireSprites()

	spriteSheetFire = love.graphics.newImage("visuels/fireSprites.png")
	firexOffset = 16
	fireyOffset = 0
	spriteFire = love.graphics.newQuad(firexOffset, fireyOffset, 16, 14, spriteSheetFire:getDimensions())
	
end

function fireAnimation(dt)
	fireAnimtime = fireAnimtime - dt
	if fireAnimtime <= 0 then 
		fireAnimtime = 0.2
		fireFrame = fireFrame + 1
		if fireFrame >= fireMaxFrame then
			fireFrame = 0
		end
		firexOffset = fireFrame * 16
	-- setViewport: met à jour le quad avec la nouvelle valeur de yOffset
		spriteFire:setViewport(firexOffset, fireyOffset, 16, 14)
	end
end
