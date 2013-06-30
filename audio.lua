-------------------------------------------------
-- audio.lua
-------------------------------------------------
local audio = {}
local audio_mt = { __index = audio}  -- metatable
 
-----------------------------------------------------------------


function loadAudioSamples(activelevel)
	activeLevel = activeLevel
	if (activeLevel == 1) then
		local breath_jump = audio.loadSound("assets/audio/breath_jump.wav")
		local cacao_pickup = audio.loadSound("assets/audio/cacao_pickup.wav")
		local game_over = audio.loadSound("assets/audio/game_over.wav")
		local hurt_man = audio.loadSound("assets/audio/hurt_man.wav")
		local jump_animated2 = audio.loadSound("assets/audio/jump_animated2.wav")
		local level_completed = audio.loadSound("assets/audio/level_completed.wav")
		local forest_ambient = audio.loadStream("assets/audio/run_forest.wav")
		elseif (level == 2)
		end
	end
end

function cleanAudioSamples ()
	if (activeLevel == 1) then
		audio.dispose(breath_jump)
		audio.dispose(cacao_pickup)
		audio.dispose(game_over)
		audio.dispose(hurt_man)
		audio.dispose(jump_animated2)
		audio.dispose(level_completed)
		elseif(level==2)
		end
	end
end

function jumpSound()
	local options = {
	channel = 0
	loops = 0
	}
	audio.play(breath_jump)
end

function cacaoPickupSound()
	local options = {
	channel = 0
	loops = 0
	}
	audio.play(cacao_pickup)
end

function GameOverSound()
	local options = {
	channel = 0
	loops = 0
	}
	audio.play(game_over)
end

function HurtSound()
	local options = {
	channel = 0
	loops = 0
	}
	audio.play(hurt_man)
end

function JumpSound()
	local options = {
	channel = 0
	loops = 0
	}
	audio.play(jump_animated2)
end

function LeveLCompleteSound()
	local options = {
	channel = 0
	loops = 0
	}
	audio.play(level_completed)
end

function loadLevelMusic(activeLevel)
	local options = {
	channel = 0
	loops = -1
	}
	if (activeLevel == 1) then
		ambientChannel = audio.play(forest_ambient)
	elseif
	end
end

function stopLevelMusic(activeLevel)
	if (activeLevel == 1) then
		audio.stop(ambientChannel)
	elseif
	end
end
