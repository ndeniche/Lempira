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
	local gameDisplay = display.newGroup()

	local sceneLayer1 = display.newImage("assets/images/sceneLayer1.png")
	sceneLayer1.x = 0

	local sceneLayer2 = display.newImage("assets/images/sceneLayer2.png")
	sceneLayer2.x = 0

	local function update(event)
		updateSceneLayers()
	end

	function updateSceneLayers()
		sceneLayer1.x = sceneLayer1.x - (0.25)
		sceneLayer2.x = sceneLayer2.x - (3)

		if(sceneLayer1.x < -1849) then
			sceneLayer1.x = 0
		end
	end

	return gameDisplay
end

timer.performWithDelay(1, update, -1)