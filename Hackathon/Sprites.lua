-------------------------------------------------
-- Sprites.lua
-------------------------------------------------
 
local sprites = {}
local sprites_mt = { __index = sprites }  -- metatable
 
-------------------------------------------------
--Lempira Legs Running
function RunLegs(lempira)

	local runLegsSprite = lempira:runLegs() 

	local sequenceData = {
   	{ name = "runLegs1", start=1, count=1, time=0,   loopCount=1 },
  	{ name = "runLegs2", start=1, count=2, time=100, loopCount=1 },
   	{ name = "runLegs3", start=1, count=3, time=200, loopCount=1 },
   	{ name = "runLegs4", start=1, count=4, time=300, loopCount=1 },

	local runLegsSprite = display.newSprite( runLegsSprite, sequenceData )
		runLegsSprite.x = 75
		if (lempira.getState == "run") 
			then runLegsSprite.y = 30
		end
		lempiraBody:insert( runLegsSprite )  --"lempiraBody" is a display group

		runLegsSprite.setSequence()
		runLegsSprite.play()
end


-------------------------------------------------
--Lempira Body Running
function RunBody(Lempira)
	local runBodySprite = lempira:runBody() 

	local sequenceData = {
   	{ name = "runBody1", start=1, count=1, time=0,   loopCount=1 },
  	{ name = "runBody2", start=1, count=2, time=100, loopCount=1 },
   	{ name = "runBody3", start=1, count=3, time=200, loopCount=1 },
   	{ name = "runBody4", start=1, count=4, time=300, loopCount=1 },

	local runBodySprite = display.newSprite( runBodySprite, sequenceData )
		runBodySprite.x = 75
		if (lempira.getState == "run") 
			then runBodySprite.y = 30
		end
		lempiraBody:insert( runBodySprite )  --"lempiraBody" is a display group

		runBodySprite.setSequence()
		runBodySprite.play()
end


-------------------------------------------------
--Lempira Body Throwing
function ThrowBody(Lempira)
	local throwBodySprite = lempira.throwBody() 

	local sequenceData = {
   	{ name = "throwBody1", start=1, count=1, time=0,   loopCount=1 },
  	{ name = "throwBody2", start=1, count=2, time=100, loopCount=1 },
   	{ name = "throwBody3", start=1, count=3, time=200, loopCount=1 },
   	{ name = "throwBody4", start=1, count=4, time=300, loopCount=1 },

	local throwBodySprite = display.newSprite( throwBodySprite, sequenceData )
		throwBodySprite.x = 75
		if (lempira.getState == "run") 
			then throwBodySprite.y = 30
		end
		lempiraBody:insert( throwBodySprite )  --"lempiraBody" is a display group
		
		throwBodySprite.setSequence()
		throwBodySprite.play()
end
