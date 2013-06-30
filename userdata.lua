-------------------------------------------------
-- Userdata.lua
-------------------------------------------------
 
local userdata = {}
local userdata_mt = { __index = userdata }  -- metatable
 
-------------------------------------------------
--Primary Function
-------------------------------------------------
function createTable()
	-- Create Table to Autostore Data
	 Autostore = require( "dmc_autostore")
	 data = Autostore.data

	-- Add High Score objects to table
	data['highscores'] ={}
	objs_branch = data.highscores

	--Add Open Levels
	data.openLevel = ""

	--Add Cacao Total
	data.cacaoTotal = ""
	return data
end


--------------------------------------------------
-- Save New Cacao Total
function saveCacaoTotal(cacaoScore)
	cacaoScore = cacaoScore
	data.cacaoTotal = cacaoScore
end

---------------------------------------------------
--Return Cacao Total
function returnCacaoTotal()
	return data.openLevel
end


---------------------------------------------------
--Save Highest Level Open
function saveOpenLevels(highLevel)
	highLevel = highLevel
	data.openLevel = highLevel
end

---------------------------------------------------
--Return Highest Level Open
function returnOpenLevels()
	return data.openLevel
end

---------------------------------------------------
--Save Level High Score
function saveLevelHighScore(level, highscore)
	local obj
	level=level
	highscore=highscore

	obj = {LevelName = level, LevelHighScore = highscore}
	objs_branch:insert(obj)
end

---------------------------------------------------
--Return Level High Score
function returnLevelHighScores(level)
	return data.highscores
end





