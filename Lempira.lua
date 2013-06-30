-------------------------------------------------
-- Lempira.lua
-------------------------------------------------
require("graphics")


local Lempira = {}
local lempira_mt = { __index = Lempira }	-- metatable
 
-------------------------------------------------
-- PRIVATE FUNCTIONS
-------------------------------------------------

 
-------------------------------------------------
-- PUBLIC FUNCTIONS
-------------------------------------------------
 
function Lempira.new(aState)	-- constructor
		
	local newLempira = {		
		state = aState or "run" --States: run, jump, dead, 
	}
	
	return setmetatable( newLempira, lempira_mt )
end
-------------------------------------------------
function Lempira:setState(aState)
	self.state = aState
end
------------------------------------------------- 
function Lempira:getState()
	return self.state
end
------------------------------------------------- 
function Lempira:runBody()	
	return "assets/images/characters/lempira_tronco.png"
end
-------------------------------------------------
function Lempira:runLegs()
	local options = {
	   width = 262,
	   height = 202.8,
	   numFrames = 4,
	   sheetContentWidth=517, 
	   sheetContentHeight=407
	}
	return graphics.newImageSheet( "assets/images/characters/lempira_piernas.png", options )
end
-------------------------------------------------
function Lempira:jump()
	print( " jump." )
end
-------------------------------------------------
function Lempira:shoot()
	print( "shoot" )
end
-------------------------------------------------
 
return Lempira