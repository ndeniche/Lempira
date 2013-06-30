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
		
	local newLempira = {
		type = type,
		
	}
	
	return setmetatable( newLempira, lempira_mt )
end
 
-------------------------------------------------
 
function lempira:destroy()
	print( " detroy." )
end
 
-------------------------------------------------
 
return obstacle