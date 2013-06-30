-------------------------------------------------
-- TortillaSprites.lua
-------------------------------------------------


local TortillaSprites = {}
local tortllasprites_mt = { __index = TortillaSprites }	-- metatable

local posicionx = 320
local posiciony = 320

 
-------------------------------------------------

--Lempira Legs Running
function TortillaSprites:Stack()

	local options = {
	   width = 166,
	   height = 95,
	   numFrames = 6,
	   sheetContentWidth=1000, 
	   sheetContentHeight=95
	}		

	local tortillaImageSheet = graphics.newImageSheet(TortillaSprites:getTortillaStack(), options)		

	local sequenceData = {
   		{ name = "useTortillas", frames= {6,5,4,3,2,1}, time=350, loopCount=0}
   		{ name = "tortillas0", start=1, count = 1, time=350, loopCount=-1}	
   		{ name = "tortillas1", start=2, count = 1, time=350, loopCount=-1}
   		{ name = "tortillas2", start=3, count = 1, time=350, loopCount=-1}
   		{ name = "tortillas3", start=4, count = 1, time=350, loopCount=-1}
   		{ name = "tortillas4", start=5, count = 1, time=350, loopCount=-1}
   		{ name = "tortillas5", start=6, count = 1, time=350, loopCount=-1}
   		

	}

	local spriteInstance = display.newSprite(tortillaImageSheet, sequenceData)

	spriteInstance.x = posicionx
	spriteInstance.y = posiciony	

	return spriteInstance
end

-------------------------------------------------
function TortillaSprites:getTortillaStack()
	return "assets/images/tortilla_icono.png"
end
