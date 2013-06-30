--
-- Project: Lempira
-- Description: 
--
-- Version: 1.0
-- Managed with http://CoronaProjectManager.com
--
-- Copyright 2013 . All Rights Reserved.
-- 

module(..., package.seeall)

local director = require("director")

new = function(params)
	local mapaDisplay = display.newGroup()

	local background = display.newImage("assets/images/mapa.png")
	background.x = 512
	background.y = 383

	local function mapaEventListener(event)
		director:changeScene("game", "downFlip")
		return true
	end

	background:addEventlistener("touch", mapaEventListener)

	return mapaDisplay

end