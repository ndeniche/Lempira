-------------------------------------------------
-- Obstacle.lua
-------------------------------------------------
 
local obstacle = {}
local obstacle_mt = { __index = obstacle }	-- metatable
 

-------------------------------------------------
-- PRIVATE FUNCTIONS
-------------------------------------------------
 
local function getLempira( realYears )	-- local; only visible in this module
	return realYears * 7
end
 
-------------------------------------------------
-- PUBLIC FUNCTIONS
-------------------------------------------------
 
function obstacle.new( type )	-- constructor
		
	local newObstacle = {
		type = type		
	}
	
	return setmetatable( newObstacle, obstacle_mt )
end
 
-------------------------------------------------
 
function obstacle:destroy()
	print( " detroy." )
end
 
-------------------------------------------------
 
return obstacle