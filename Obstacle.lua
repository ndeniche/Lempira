-------------------------------------------------
-- Obstacle.lua
-------------------------------------------------
--require("mathlib")
 
local Obstacle = {}
local obstacle_mt = { __index = Obstacle }	-- metatable
-------------------------------------------------
-- PRIVATE FUNCTIONS
-------------------------------------------------

-------------------------------------------------
-- PUBLIC FUNCTIONS
-------------------------------------------------
function Obstacle.new( atype )	-- constructor
		
	local newObstacle = {
		name = "Obstacle",		
		type = atype,	--maya, playa, montana, tegus
		number = math.random(1, 7),
		item = "assets/images/obstacles/maya" .. tostring(number) .. ".png"	
	}
	
	return setmetatable( newObstacle, obstacle_mt )
end
-------------------------------------------------
function Obstacle:getName()
	return self.name
end
-------------------------------------------------
function Obstacle:getType()
	return self.type
end
-------------------------------------------------
function Obstacle:setType(atype)
	self.type = atype
end
-------------------------------------------------
function Obstacle:rndObstacle()
	if (self.type == "maya") then
		self.number = math.random(1, 7)
		self.item = "assets/images/obstacles/maya" .. tostring(self.number) .. ".png"	
	end
	return self.item	
end
-------------------------------------------------

return Obstacle