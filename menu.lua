--
-- Project: config.lua
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
	local menuDisplay = display.newGroup()

	local background = display.newImage("assets/images/backgroundMenu.jpg")
	background.x = 512
	background.y = 383

	menuDisplay:insert(background)

	local function buttonListener(event)
		director:changeScene("mapa", "downFlip")
		return true
	end

	background:addEventListener("touch", buttonListener)

	return menuDisplay
end

