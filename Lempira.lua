-------------------------------------------------
-- Lempira.lua
-------------------------------------------------
require("graphics")


local Lempira = {}
local lempira_mt = { __index = Lempira }	-- metatable
 
-------------------------------------------------
-- PRIVATE FUNCTIONS
-------------------------------------------------

 
-------------------------------------------------
-- PUBLIC FUNCTIONS
-------------------------------------------------
 
function Lempira.new(aState)	-- constructor
		
	local newLempira = {		
		state = aState or "run" --States: run, jump, dead, 
	}
	
	return setmetatable( newLempira, lempira_mt )
end
-------------------------------------------------
function Lempira:setState(aState)
	self.state = aState
end
------------------------------------------------- 
function Lempira:getState()
	return self.state
end
------------------------------------------------- 
function Lempira:getBody()	
	return "assets/images/characters/lempira_tronco.png"
end
-------------------------------------------------
function Lempira:getLegs()	
	return "assets/images/characters/lempira_piernas.png"
end
-------------------------------------------------
function Lempira:getJump()
	print( " jump." )
end
-------------------------------------------------
function Lempira:getShoot()
	print( "shoot" )
end
-------------------------------------------------
 
return Lempira