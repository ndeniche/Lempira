---- Project: Lempira-- Description: ---- Version: 1.0-- Managed with http://CoronaProjectManager.com---- Copyright 2013 . All Rights Reserved.-- local sprite = require("sprite")local physics = require("physics")physics.start()system.activate("multitouch")display.setStatusBar(display.HiddenStatusBar)splash = display.newImage("assets/images/splash.jpg")splash.x = 512splash.y = 384local director = require("director")local mainGroup = display.newGroup ( )local main = function()	splash:removeSelf()	splash = nil	mainGroup:insert(director.directorView)	director:changeScene("game", "downflip")endtimer.performWithDelay(4000,main)