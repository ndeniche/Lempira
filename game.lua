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
local lempira =  require("Lempira")
--local sprite = require("sprite")

new = function(params)
	local gameDisplay = display.newGroup()

	local sceneLayer1 = display.newImage("assets/images/sceneLayer1.png")
	sceneLayer1.x = 0

	local sceneLayer2 = display.newImage("assets/images/sceneLayer2.png")
	sceneLayer2.x = 0
	
	local heroe = lempira.new("run")

	--local legs = RunLegs(heroe)

	--legs:setSequence("normalRunLegs")
	--legs:play()

	--gameDisplay:insert(legs)
	print (heroe:getState())
	--sp:RunLegs()
	--sp:RunBody()

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


--function RunLegs(lempira)

--	local runLegsImageSheet = lempira:runLegs() 

--	local sequenceData = {
--   	{ name = "normalRunLegs", start=1, count=4, time=100,   loopCount=0, loopDirection = "forward" },
--	{ name = "fastRunLegs", start=1, count=4, time=60,   loopCount=0, loopDirection = "forward" }
--	}

--	local runLegsSprite = display.newSprite( runLegsImageSheet, sequenceData )
--	runLegsSprite.x = 75
--	if (lempira:getState() == "run") 
--		then runLegsSprite.y = 30
--	end
		
--	return runLegsSprite
--end

timer.performWithDelay(1, update, -1)