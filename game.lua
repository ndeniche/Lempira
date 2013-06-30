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
local score = require("score")
--local userdata = require("userdata")
-------------------------------------

new = function(params)

	local gameDisplay = display.newGroup()

	local backgroundDisplay = display.newGroup()

	local sceneLayer1 = display.newImageRect("assets/images/sceneLayer1.png", 4092, 768)
	sceneLayer1.x = 2048 - 160
	sceneLayer1.y = 334

	local sceneLayer2 = display.newImage("assets/images/sceneLayer2.png")
	sceneLayer2.x = 512
	sceneLayer2.y = 440

	local sceneLayer3 = display.newImage("assets/images/sceneLayer3.png")
	sceneLayer3.x = 1024
	sceneLayer3.y = 400

	local sceneLayer4 = display.newImage("assets/images/sceneLayer4.png")
	sceneLayer4.x = 800
	sceneLayer4.y = 720

	local pathDisplay = display.newGroup()
	pathDisplay:insert(sceneLayer4)

	local sceneLayer5 = display.newImage("assets/images/sceneLayer5.png")
	sceneLayer5.x = 1024
	sceneLayer5.y = 920

	heroe = lempira.new("run")	

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

	--local scoreObject = score.new()
	local scoreValue = 0
	local scoreText = display.newText(scoreValue, 624, 0, 400, 80, "songbird", 64)
	local multiplier = 1;

	local function updateMultiplier()
		multiplier = multiplier + 1
	end

	local function updateScore()
		scoreValue = scoreValue + ( 1 * multiplier)
		scoreText.text = scoreValue
	end

	timer.performWithDelay(60000, updateMultiplier, 3)
	timer.performWithDelay(100, updateScore, -1)

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
		sceneLayer5.x = sceneLayer5.x - (24)

		if(sceneLayer1.x < -1024) then
			sceneLayer1.x = 2048 - 4
		end

		if(sceneLayer2.x < -1536) then
			sceneLayer2.x = 512
		end

		if(sceneLayer4.x < 140) then
			sceneLayer4.x = 800
		end

		if(sceneLayer5.x < -680) then
			sceneLayer5.x = 1350
		end	

	end

	function jumpLempira()
--		local state = heroe.getState()
--		if(state == "run")
--			heroe.setState("jump")	

			lempiraDisplay:remove(body)
			lempiraDisplay:remove(legs)

			body = ls:JumpBody(heroe)
			legs = ls:JumpLegs(heroe)

			lempiraDisplay:insert(body)
			lempiraDisplay:insert(legs)

			body:setSequence("normalJumpBody")	
			body:play()	

			legs:setSequence("normalJumpLegs")
			legs:play()

			timer.performWithDelay(800, landLempira)
--		end
	end

	function landLempira()
		lempiraDisplay:remove(body)
		lempiraDisplay:remove(legs)

		body = ls:RunBody(heroe)
		legs = ls:RunLegs(heroe)

		lempiraDisplay:insert(body)
		lempiraDisplay:insert(legs)

		body:setSequence("normalRunBody")	
		body:play()	

		legs:setSequence("normalRunLegs")
		legs:play()
	end

	timer.performWithDelay(1, update, -1)

	local beginX 
	local beginY 
	local endX 
	local endY 
	 
	local xDistance  
	local yDistance  

	local rectOverlay = display.newRect(0, 0, 1024, 768)
	rectOverlay.alpha = 0
	rectOverlay.isHitTestable = true

	rectOverlay:addEventListener("touch", 
		function(event)
			if event.phase == "began" then
	                beginX = event.x
	                beginY = event.y
	        end
--	        
	        if event.phase == "ended"  then
	                endX = event.x
	                endY = event.y
	                checkSwipeDirection();
	        end
		end
		)
--	rectOverlay:addEventListener("collision", OnCollision
	 
	function checkSwipeDirection()

	        xDistance =  math.abs(endX - beginX) -- math.abs will return the absolute, or non-negative value, of a given value. 
	        yDistance =  math.abs(endY - beginY)
	        
	        if xDistance > yDistance then
--	                if beginX > endX then
--	                        --left
--	                else 
--	                        --right
--	                end
	        else 
	                if beginY > endY then
	                    
	                else 
	                        jumpLempira()
	                end
	        end
--	        
	end
--	 
--
	function OnCollision( event ) 
--	        if (event.phase == "began") then
--	                if ((event.Object1.name == "Lempira" || event.Object1.name == "Cacao")&&(event.Object2.name == "Lempira" || event.Object2.name == "Cacao")) then
--	                score:cacaoPoint()
--	                elseif ((event.Object1.name == "Lempira" || event.Object1.name == "Tortilla")&&(event.Object2.name == "Lempira" || event.Object2.name == "Tortilla")) then
--	                        score:tortillaPoint()
--	                        elseif ((event.Object1.name == "Lempira" || event.Object1.name == "Obstacle")&&(event.Object2.name == "Lempira" || event.Object2.name == "Obstacle")) then
--	                         end
--	                end
--	        end
	end

	return gameDisplay
end
