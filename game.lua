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

	local backgroundDisplay = display.newGroup()

	local sceneLayer1 = display.newImageRect("assets/images/sceneLayer1.png", 4092, 768)
	sceneLayer1.x = 2048
	sceneLayer1.y = 334

	local sceneLayer2 = display.newImage("assets/images/sceneLayer2.png")
	sceneLayer2.x = 1024
	sceneLayer2.y = 440

	local sceneLayer3 = display.newImage("assets/images/sceneLayer3.png")
	sceneLayer3.x = 1024
	sceneLayer3.y = 400

	local sceneLayer4 = display.newImage("assets/images/sceneLayer4.png")
	sceneLayer4.x = 1024
	sceneLayer4.y = 720

	local pathDisplay = display.newGroup()
	pathDisplay:insert(sceneLayer4)

	local sceneLayer5 = display.newImage("assets/images/sceneLayer5.png")
	sceneLayer5.x = 1024
	sceneLayer5.y = 920

	local heroe = lempira.new("run")	

	local body = ls:RunBody(heroe)
	local legs = ls:RunLegs(heroe)

	backgroundDisplay:insert(sceneLayer1)
	backgroundDisplay:insert(sceneLayer2)

	local lempiraDisplay = display.newGroup()

	lempiraDisplay:insert(body)
	lempiraDisplay:insert(legs)

	local frontDisplay = display.newGroup()

	frontDisplay:insert(sceneLayer5)

	body:setSequence("normalRunBody")	
	body:play()	

	legs:setSequence("normalRunLegs")
	legs:play()

	
	--Create Obstacles
	local obstacle = obs.new("maya")	
	sceneObs = display.newImage(obstacle:rndObstacle())
	sceneObs.x = 1200
	sceneObs.y = 600

	local obstaculoDisplay = display.newGroup()

	obstaculoDisplay:insert(sceneObs)

	gameDisplay:insert(backgroundDisplay)
	gameDisplay:insert(pathDisplay)
	gameDisplay:insert(obstaculoDisplay)
	gameDisplay:insert(lempiraDisplay)
	gameDisplay:insert(frontDisplay)

	local function update(event)
		updateSceneLayers()
	end

	local function getRandomMaya()
		local rand = math.random(1,32)
		if(rand == 1) then
			local o = obs.new("maya")
			sceneObs = display.newImage(obstacle:rndObstacle())
			sceneObs.x = 1200
			sceneObs.y = 600
		end
		frontDisplay:toFront()	
	end

	function updateSceneLayers()
		sceneLayer1.x = sceneLayer1.x - (1)
		sceneLayer2.x = sceneLayer2.x - (4)
		sceneLayer4.x = sceneLayer4.x - (16)
		

		if(sceneObs ~= nil) then
			sceneObs.x = sceneObs.x - 16
			if(sceneObs.x < -200) then
				sceneObs:removeSelf()
				sceneObs = nil
			end
		else
			getRandomMaya()
		end
		sceneLayer5.x = sceneLayer5.x - (20)

		if(sceneLayer1.x < -1024) then
			sceneLayer1.x = 2048 - 4
		end

		if(sceneLayer2.x < -1024) then
			sceneLayer2.x = 1024
		end

		if(sceneLayer4.x < 0) then
			sceneLayer4.x = 650
		end

		if(sceneLayer5.x < 0) then
			sceneLayer5.x = 770
		end	

	end

	timer.performWithDelay(1, update, -1)

	return gameDisplay
end
