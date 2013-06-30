-------------------------------------------------
-- Userdata.lua
-------------------------------------------------
 
local userdata = {}
local userdata_mt = { __index = userdata }  -- metatable
 
-------------------------------------------------
--Constructor
-------------------------------------------------
function userdata.new()
	local userdata = {
		data = [],

	}

-------------------------------------------------
--Primary Function
-------------------------------------------------
function createTable()
	-- Create Table to Autostore Data
	 Autostore = require( "dmc_autostore")
	 data = Autostore.data

	-- Add High Score objects to table
	data['levels'] ={}
	objs_branch = data.levels

	--Add Open Levels
	data.openLevel = ""

	--Add Cacao Total
	data.cacaoTotal = ""
	return data
end


--------------------------------------------------
-- Save New Cacao Total
function userdata:saveCacaoTotal(cacaoScore)
	cacaoScore = cacaoScore
	data.cacaoTotal = cacaoScore
end

---------------------------------------------------
--Return Cacao Total
function userdata:returnCacaoTotal()
	return data.openLevel
end


---------------------------------------------------
--Save Highest Level Open
function userdata:saveOpenLevels(highLevel)
	highLevel = highLevel
	data.openLevel = highLevel
end

---------------------------------------------------
--Return Highest Level Open
function userdata:returnOpenLevels()
	return data.openLevel
end

---------------------------------------------------
--Save Level High Score
function userdata:saveLevelHighScore(level, highscore)
	local obj
	level=level
	highscore=highscore

	obj = {LevelNumber = level, LevelHighScore = highscore}
	objs_branch:insert(obj)
end

---------------------------------------------------
--Return Level High Score
function userdata:returnLevelHighScores(level)
	return data.highscores
end