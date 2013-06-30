-------------------------------------------------
-- Enemy.lua
-------------------------------------------------
 
local enemy = {}
local enemy_mt = { __index = enemy }	-- metatable
 

-------------------------------------------------
-- PRIVATE FUNCTIONS
-------------------------------------------------
local function getLempira( realYears )	-- local; only visible in this module
	return realYears * 7
end

-------------------------------------------------
-- PUBLIC FUNCTIONS
-------------------------------------------------
function enemy.new( type )	-- constructor
		
	local newEnemy = {
		--maya, playa, montana, tegus
		type = type	or "maya"	
	}
	
	return setmetatable( newEnemy, enemy_mt )
end
-------------------------------------------------
function enemy:getType()
	return self.type
end
-------------------------------------------------
function enemy:setType(type)
	self.type = type
end
-------------------------------------------------
function lempira:run()
	local options = {
	   width = 262,
	   height = 384,
	   numFrames = 4
	}
	return graphics.newImageSheet( "assets/images/health_bar.png", options )
end
-------------------------------------------------

return enemy