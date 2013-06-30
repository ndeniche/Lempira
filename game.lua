-- Project: Lempira
-- Description: 
--
-- Version: 1.0
-- Managed with http://CoronaProjectManager.com
--
-- Copyright 2013 . All Rights Reserved.

module(..., package.seeall)

--Requires
local director = require("director")
local lempira = require("Lempira")
local ls = require("LempiraSprites")
local obs = require("Obstacle")
-------------------------------------

new = function(params)

	local gameDisplay = display.newGroup()

	local sceneLayer1 = display.newImageRect("assets/images/sceneLayer1.png", 4092, 768)
	sceneLayer1.x = 2048
	sceneLayer1.y = 334

	local sceneLayer2 = display.newImage("assets/images/sceneLayer2.png")
	sceneLayer2.x = 1024
	sceneLayer2.y = 400

	local sceneLayer5 = display.newImage("assets/images/sceneLayer5.png")
	sceneLayer5.x = 1024
	sceneLayer5.y = 768 - 90

	local heroe = lempira.new("run")	

	local body = ls:RunBody(heroe)
	local legs = ls:RunLegs(heroe)

	gameDisplay:insert(sceneLayer1)
	gameDisplay:insert(sceneLayer2)
	gameDisplay:insert(body)
	gameDisplay:insert(legs)
	gameDisplay:insert(sceneLayer5)

	body:setSequence("normalRunBody")	
	body:play()	

	legs:setSequence("normalRunLegs")
	legs:play()

	
	--Create Obstacles
	local obstacle = obs.new("maya")	
	local sceneObs = display.newImage(obstacle:rndObstacle())
	sceneObs.x = 900
	sceneObs.y = 600
	gameDisplay:insert(sceneObs)


	local function update(event)
		updateSceneLayers()
	end

	function updateSceneLayers()
		sceneLayer1.x = sceneLayer1.x - (1)
		sceneLayer2.x = sceneLayer2.x - (4)
		sceneLayer5.x = sceneLayer5.x - (16)

		if(sceneLayer1.x < -1024) then
			sceneLayer1.x = 2048 + 4
		end

		if(sceneLayer2.x < -1024) then
			sceneLayer2.x = 1024
		end

		if(sceneLayer5.x < 0) then
			sceneLayer5.x = 1024
		end		
	end

	timer.performWithDelay(1, update, -1)

	return gameDisplay
end
