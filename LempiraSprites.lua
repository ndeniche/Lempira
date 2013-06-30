-------------------------------------------------
-- LempiraSprites.lua
-------------------------------------------------
require("Lempira")

local LempiraSprites = {}
local sprites_mt = { __index = LempiraSprites }	-- metatable
 
-------------------------------------------------

--Lempira Legs Running
function LempiraSprites:RunLegs(lempira)

	local options = {
	   width = 262,
	   height = 233,
	   numFrames = 4,
	   sheetContentWidth=524, 
	   sheetContentHeight=466
	}		

	local runLegsImageSheet = graphics.newImageSheet(lempira:getLegs(), options)		

	local sequenceData = {
   		{ name = "normalRunLegs", start=1, count=4, time=250},
		{ name = "fastRunLegs", start=1, count=4, time=125}
	}

	local spriteInstance = display.newSprite(runLegsImageSheet, sequenceData)
		
	spriteInstance.x = 512
	spriteInstance.y = 545	
		
	return spriteInstance
end

-------------------------------------------------
--Lempira Body Running
function LempiraSprites:RunBody(lempira)

	local options = {
	   width = 262,
	   height = 233,
	   numFrames = 4,
	   sheetContentWidth=524, 
	   sheetContentHeight=466
	}		

	local runBodyImageSheet = graphics.newImageSheet(lempira:getBody(), options)		

	local sequenceData = {
   		{ name = "normalRunBody", start=1, count=4, time=250},
		{ name = "fastRunBody", start=1, count=4, time=125}
	}

	local spriteInstance = display.newSprite(runBodyImageSheet, sequenceData)
	
	spriteInstance.x = 512
	spriteInstance.y = 383	
		
	return spriteInstance
end


return LempiraSprites
