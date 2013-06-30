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
 
function lempira.new( body, rightArm, legs, state)	-- constructor
		
	local newLempira = {
		body = body,
		rightArm = rightArm		
		state = state or 'run' --States: run, jump, dead, 
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
	   height = 384,
	   numFrames = 4,
	   sheetContentWidth=1024, 
	   sheetContentHeight=1024
	}
	return graphics.newImageSheet( "assets/images/health_bar.png", options )
end
-------------------------------------------------
function lempira:runLegs()
	local options = {
	   width = 262,
	   height = 384,
	   numFrames = 4
	}
	return graphics.newImageSheet( "images/health_bar.png", options )
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