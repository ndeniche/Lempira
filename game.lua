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
local lempira = require("Lempira")
--local sprite = require("sprite")

new = function(params)
	local gameDisplay = display.newGroup()

	local sceneLayer1 = display.newImage("assets/images/sceneLayer1.png")
	sceneLayer1.x = 0

	local sceneLayer2 = display.newImage("assets/images/sceneLayer2.png")
	sceneLayer2.x = 0


	local heroe = lempira.new("run")
	local body = RunBody(heroe)

	--legs:setSequence("normalRunLegs")
	--legs:play()

	gameDisplay:insert(body)
	body:setSequence("normalRunLegs")
	body:play()	
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


function RunBody(lempira)

	local options = {
	   width = 238,
	   height = 220,
	   numFrames = 4,	   
	   --sourceWidth=524, 
	   --sourceHeight=447
	   sourceWidth=476, 
	   sourceHeight=440
	}		

	local runBodyImageSheet = graphics.newImageSheet("assets/images/characters/lempira_tronco.png", options)		

	local sequenceData = {
   		{ name = "normalRunLegs", start=1, count=4, time=10},
		{ name = "fastRunLegs", start=1, count=4, time=60}
	}

	local spriteInstance = display.newSprite(runBodyImageSheet, sequenceData)
	
	--spriteInstance:setReferencePoint(display.CenterLeftReferencePoint)	
	spriteInstance.x = 512
	spriteInstance.y = 383
	--spriteInstance:play()
	--local runLegsSprite = display.newSprite( runLegsImageSheet, sequenceData )
	--runLegsSprite.x = 75
	--if (lempira:getState() == "run") 
	--	then runLegsSprite.y = 30
	--end
		
	return spriteInstance
end

timer.performWithDelay(1, update, -1)