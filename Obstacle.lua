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
		--maya, playa, montana, tegus
		type = type	or "maya"

		if type == "maya" then
			number = math.random(1, 7)
			item = display.newImage("assets/images/obstacles/maya" + number + ".png", 792, 612)	
		end		
	}
	
	return setmetatable( newObstacle, obstacle_mt )
end
-------------------------------------------------
function obstacle:getType()
	return self.type
end
-------------------------------------------------
function obstacle:setType(type)
	self.type = type
end
-------------------------------------------------
function obstacle:rndObstacle()
	if type == "maya" then
			number = math.random(1, 7)
			item = display.newImage("assets/images/obstacles/maya" + number + ".png", 792, 612)	
	end
	return item	
end
-------------------------------------------------

return obstacle