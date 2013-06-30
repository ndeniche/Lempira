-------------------------------------------------
-- Sprites.lua
-------------------------------------------------
 
local sprites = {}
local sprites_mt = { __index = sprites }	-- metatable
 
-------------------------------------------------
--Lempira Legs Running
function RunLegs(lempira)

	local runLegsSprite = lempira:runLegs() 

	local sequenceData = {
   	{ name = "normalRunLegs", start=1, count=4, time=100,   loopCount=0, loopDirection = "forward" },
	{ name = "fastRunLegs", start=1, count=4, time=60,   loopCount=0, loopDirection = "forward" },
	
	local runLegsSprite = display.newSprite( runLegsSprite, sequenceData )
		runLegsSprite.x = 75
		if (lempira.getState == "run") 
			then runLegsSprite.y = 30
		end
		lempiraBody:insert( runLegsSprite )  --"lempiraBody" is a display group
		
		runLegsSprite.setSequence("runBody4")
		runLegsSprite.play()
end


-------------------------------------------------
--Lempira Body Running
function RunBody(Lempira)
	local runBodySprite = lempira:runBody() 

	local sequenceData = {
   	{ name = "normalRunBody", start=1, count=4, time=100,   loopCount=0, loopDirection = "forward" },
	{ name = "fastRunBody", start=1, count=4, time=60,   loopCount=0, loopDirection = "forward" },

	local runBodySprite = display.newSprite( runBodySprite, sequenceData )
		runBodySprite.x = 75
		if (lempira.getState == "run") 
			then runBodySprite.y = 30
		end
		lempiraBody:insert( runBodySprite )  --"lempiraBody" is a display group

		runBodySprite.setSequence("runBody4")
		runBodySprite.play()
end


-------------------------------------------------
--Lempira Body Throwing
function ThrowBody(Lempira)
	local throwBodySprite = lempira.throwBody() 

	local sequenceData = {
   		{ name = "normalThrowBody", start=1, count=4, time=100,   loopCount=0, loopDirection = "forward" },
	{ name = "fastThrowBody", start=1, count=4, time=60,   loopCount=0, loopDirection = "forward" },

	local throwBodySprite = display.newSprite( throwBodySprite, sequenceData )
		throwBodySprite.x = 75
		if (lempira.getState == "run") 
			then throwBodySprite.y = 30
		end
		lempiraBody:insert( throwBodySprite )  --"lempiraBody" is a display group

		throwBodySprite.setSequence("throwBody4")
		throwBodySprite.play()
end

