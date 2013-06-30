-------------------------------------------------
-- Lempira.lua
-------------------------------------------------
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
		name = "Lempira",		
		state = aState or "run", --States: run, jump, dead, 
		weapon = "piedra"
	}
	
	return setmetatable( newLempira, lempira_mt )
end
-------------------------------------------------
function Lempira:getName()
	return self.name
end
------------------------------------------------- 
function Lempira:setWeapon(aWeapon)
	self.weapon = aWeapon
end
------------------------------------------------- 
function Lempira:getWepon()
	return self.weapon
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
	return "assets/images/characters/lempira__tronco.png"
end
-------------------------------------------------
function Lempira:getLegs()	
	return "assets/images/characters/lempira__piernas.png"
end
-------------------------------------------------
function Lempira:getJumpLegs()
	return "assets/images/characters/lempira_salto_piernas.png"
end
-------------------------------------------------
function Lempira:getJumpBody()
	return "assets/images/characters/lempira_salto_tronco.png"
end
-------------------------------------------------
function Lempira:getHit()
	if (self.weapon == "piedra") then
		return "assets/images/characters/lempira_golpe_piedra.png"
	end
end
-------------------------------------------------
 
return Lempira