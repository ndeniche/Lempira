-------------------------------------------------
-- LempiraSprites.lua
-------------------------------------------------
require("Lempira")

local LempiraSprites = {}
local sprites_mt = { __index = LempiraSprites }	-- metatable

local posicionx = 320
local velocidadInicial = 350
 
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
   		{ name = "normalRunLegs", start=1, count=4, time=350},
		{ name = "fastRunLegs", start=1, count=4, time=125}
	}

	local spriteInstance = display.newSprite(runLegsImageSheet, sequenceData)
		
	spriteInstance.x = posicionx
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
   		{ name = "normalRunBody", start=1, count=4, time=350},
		{ name = "fastRunBody", start=1, count=4, time=125}
	}

	local spriteInstance = display.newSprite(runBodyImageSheet, sequenceData)
	
	spriteInstance.x = posicionx
	spriteInstance.y = 383	
		
	return spriteInstance
end

-------------------------------------------------
--Lempira Jump
function LempiraSprites:JumpLegs(lempira)

	local options = {
	   width = 262,
	   height = 233,
	   numFrames = 4,
	   sheetContentWidth=1048, 
	   sheetContentHeight=234
	}		

	local jumpLegsImageSheet = graphics.newImageSheet(lempira:getJumpLegs(), options)		

	local sequenceData = {
   		{ name = "normalJumpLegs", start=1, count=3, time=800},
		{ name = "fastJumpLegs", start=1, count=3, time=125}
	}

	local spriteInstance = display.newSprite(jumpLegsImageSheet, sequenceData)
	
	spriteInstance.x = posicionx
	spriteInstance.y = 445	
		
	return spriteInstance
end

-------------------------------------------------
--Lempira Jump
function LempiraSprites:JumpBody(lempira)

	local options = {
	   width = 262,
	   height = 233,
	   numFrames = 3,
	   sheetContentWidth=786, 
	   sheetContentHeight=234
	}		

	local jumpBodyImageSheet = graphics.newImageSheet(lempira:getJumpBody(), options)		

	local sequenceData = {
   		{ name = "normalJumpBody", start=1, count=3, time=800},
		{ name = "fastJumpBody", start=1, count=3, time=125}
	}

	local spriteInstance = display.newSprite(jumpBodyImageSheet, sequenceData)
	
	spriteInstance.x = posicionx
	spriteInstance.y = 284	
		
	return spriteInstance
end

return LempiraSprites
