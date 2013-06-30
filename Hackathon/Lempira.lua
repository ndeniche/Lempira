-------------------------------------------------
-- Lempira.lua
-------------------------------------------------
 
local lempira = {}
local lempira_mt = { __index = lempira }	-- metatable
 

-------------------------------------------------
-- PRIVATE FUNCTIONS
-------------------------------------------------
 
local function getLempira( realYears )	-- local; only visible in this module
	return realYears * 7
end
 
-------------------------------------------------
-- PUBLIC FUNCTIONS
-------------------------------------------------
 
function lempira.new( body, rightArm, leftArm, rightLeg, leftLeg )	-- constructor
		
	local newLempira = {
		body = body,
		rightArm = rightArm,
		leftArm = leftArm,
		rightLeg = rightLeg,
		leftLeg = leftLeg
	}
	
	return setmetatable( newLempira, lempira_mt )
end
 
-------------------------------------------------
 
function lempira:run()
	print( " run." )
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