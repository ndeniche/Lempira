-------------------------------------------------
-- Sprites.lua
-------------------------------------------------
local sprite = require("sprite")

local sprites = {}
local sprites_mt = { __index = sprites }	-- metatable
 


 function sprites.new(state)	-- constructor
		
	local newSprites = {		
	}
	
	return setmetatable( newSprites, sprites_mt )
end
-------------------------------------------------
--Lempira Legs Running
function RunLegs(lempira)

	local runLegsImageSheet = lempira:runLegs() 

	local sequenceData = {
   	{ name = "normalRunLegs", start=1, count=4, time=100,   loopCount=0, loopDirection = "forward" },
	{ name = "fastRunLegs", start=1, count=4, time=60,   loopCount=0, loopDirection = "forward" }
	}

	local runLegsSprite = display.newSprite( runLegsImageSheet, sequenceData )
	runLegsSprite.x = 75
	if (lempira:getState() == "run") 
		then runLegsSprite.y = 30
	end
	
	sprite.add()
		
	return runLegsSprite
end


-------------------------------------------------
--Lempira Body Running
function RunBody(Lempira)
	local runBodyImageSheet = lempira:runBody() 

	local sequenceData = {
   	{ name = "normalRunBody", start=1, count=4, time=100,   loopCount=0, loopDirection = "forward" },
	{ name = "fastRunBody", start=1, count=4, time=60,   loopCount=0, loopDirection = "forward" }
	}

	local runBodySpriteSheet = display.newSprite( runBodyImageSheet, sequenceData )
		runBodySpriteSheet.x = 75
		if (lempira:getState() == "run") 
			then runBodySpriteSheet.y = 30
		end
		lempiraBody:insert( runBodySprite )  --"lempiraBody" is a display group

		runBodySprite.setSequence("normalRunBody")
		runBodySprite.play()
end


-------------------------------------------------
--Lempira Body Throwing
function ThrowBody(Lempira)
	local throwBodySprite = lempira.throwBody() 

	local sequenceData = {
   		{ name = "normalThrowBody", start=1, count=4, time=100,   loopCount=0, loopDirection = "forward" },
		{ name = "fastThrowBody", start=1, count=4, time=60,   loopCount=0, loopDirection = "forward" }
	}

	local throwBodySprite = display.newSprite( throwBodySprite, sequenceData )
		throwBodySprite.x = 75
		if (lempira.getState == "run") 
			then throwBodySprite.y = 30
		end
		lempiraBody:insert( throwBodySprite )  --"lempiraBody" is a display group

		throwBodySprite.setSequence("normalThrowBody")
		throwBodySprite.play()
end

