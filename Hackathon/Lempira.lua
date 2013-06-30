-------------------------------------------------
-- Lempira.lua
-------------------------------------------------
 
local lempira = {}
local lempira_mt = { __index = lempira }	-- metatable
 

-------------------------------------------------
-- PRIVATE FUNCTIONS
-------------------------------------------------

local function setState(state)	-- local; only visible in this module
	self.state = state
end

 
local function getState()	-- local; only visible in this module
	return self.state
end
 
-------------------------------------------------
-- PUBLIC FUNCTIONS
-------------------------------------------------
 
function lempira.new( body, rightArm, state)	-- constructor
		
	local newLempira = {
		body = body,
		rightArm = rightArm		
		state = state or 'run' --States: run, jump, dead, 
	}
	
	return setmetatable( newLempira, lempira_mt )
end
 
-------------------------------------------------
 
function lempira:run()
	local options = {
	   width = 60,
	   height = 20,
	   numFrames = 6
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
function lempira:shoot()
	print( "shoot" )
end

-------------------------------------------------


 
return lempira