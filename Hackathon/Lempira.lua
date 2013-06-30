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
function setState(state)	-- local; only visible in this module
	self.state = state
end

------------------------------------------------- 
function getState()	-- local; only visible in this module
	return self.state
end
-------------------------------------------------
 
function lempira:runBody()
	local options = {
	   width = 262,
	   height = 384,
	   numFrames = 4
	}
	return graphics.newImageSheet( "images/health_bar.png", options )
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