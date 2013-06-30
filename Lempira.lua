-------------------------------------------------
-- Lempira.lua
-------------------------------------------------
 
local lempira = {}
local lempira_mt = { __index = lempira }	-- metatable
 
-------------------------------------------------
-- PRIVATE FUNCTIONS
-------------------------------------------------

 
-------------------------------------------------
-- PUBLIC FUNCTIONS
-------------------------------------------------
 
function lempira.new(state)	-- constructor
		
	local newLempira = {		
		state = state or "run" --States: run, jump, dead, 
	}
	
	return setmetatable( newLempira, lempira_mt )
end
-------------------------------------------------
function setState(state)
	self.state = state
end
------------------------------------------------- 
function getState()
	return self.state
end
------------------------------------------------- 
function lempira:runBody()
	local options = {
	   width = 262,
	   height = 233,
	   numFrames = 4,
	   sheetContentWidth=525, 
	   sheetContentHeight=447
	}
	return graphics.newImageSheet( "assets/images/characters/lempira_tronco.png", options )
end
-------------------------------------------------
function lempira:runLegs()
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
function lempira:jump()
	print( " jump." )
end
-------------------------------------------------
function lempira:shoot()
	print( "shoot" )
end
-------------------------------------------------
 
return lempira