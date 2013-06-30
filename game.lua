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
local LempiraSprite = require("LempiraSprites")

new = function(params)
	local gameDisplay = display.newGroup()

	local sceneLayer1 = display.newImage("assets/images/sceneLayer1.png")
	sceneLayer1.x = 0

	local sceneLayer2 = display.newImage("assets/images/sceneLayer2.png")
	sceneLayer2.x = 0


	local heroe = lempira.new("run")
	local ls = LempiraSprite.new()

	--local body = RunBody(heroe)
	local body = ls:RunBody(heroe)	

	gameDisplay:insert(sceneLayer1)
	gameDisplay:insert(sceneLayer2)
	gameDisplay:insert(body)

	body:setSequence("normalRunLegs")
	body:play()	


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

	local runBodyImageSheet = graphics.newImageSheet(lempira:getBody(), options)		

	local sequenceData = {
   		{ name = "normalRunLegs", start=1, count=4, time=250},
		{ name = "fastRunLegs", start=1, count=4, time=125}
	}

	local spriteInstance = display.newSprite(runBodyImageSheet, sequenceData)
	
	spriteInstance.x = 512
	spriteInstance.y = 383	
		
	return spriteInstance
end


function RunLegs(lempira)

	local options = {
	   width = 262,
	   height = 202.8,
	   numFrames = 4,
	   sheetContentWidth=517, 
	   sheetContentHeight=407
	}		

	local runLegsImageSheet = graphics.newImageSheet("assets/images/characters/lempira_tronco.png", options)		

	local sequenceData = {
   		{ name = "normalRunLegs", start=1, count=4, time=250},
		{ name = "fastRunLegs", start=1, count=4, time=125}
	}

	local spriteInstance = display.newSprite(runBodyImageSheet, sequenceData)
	
	--spriteInstance:setReferencePoint(display.CenterLeftReferencePoint)	
	spriteInstance.x = 512
	spriteInstance.y = 383	
		
	return spriteInstance
end

timer.performWithDelay(1, update, -1)