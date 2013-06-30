

-------------------------------------------------
-- Score.lua
-------------------------------------------------
 
local score = {}
local score_mt = { __index = score }  -- metatable
 


--------------------------------------------------------
function score.new()  -- constructor
	

	-- Initialize Score Variables
--	local tortilla = 0
--	local cacao = userdata.returnCacaoTotal()
--	local distancia = 0
--	local health = 3
--	local scoresDisplay=display.newGroup()
	--------------------------------------------------
	-- Text variable to maintain distance score
--	local distanciaText = display.newText(" " ..self.distancia, 0, 0)
--	distanciaText:setReferencePoint(display.CenterLeftReferencePoint)
--	distanciaText.x = 0
--	distanciaText.y = 80


	-- Text variable to maintain cacao score
--	local cacaoText = display.newText(" " ..self.cacao, 0, 0)
--	cacaoText:setReferencePoint(display.CenterLeftReferencePoint)
--	cacaoText.x = 100
--	cacaoText.y = 80

	----------------------------------------------------
	--Set initial tortilla displays
--	updateTortillaImage(tortilla)

	local newScore={
	tortilla = 0,
	cacao = 0,
	distancia = 0,
	health = 3
	}
	
	return setmetatable( newScore, score_mt)
end



function score:distanciaPoint(multiplier)
 --Updaes distance based on blocks passed
	self.distancia = self.distancia + (1 * multiplier)
--	distanciaText.Text = (" " ..self.distancia)
--	distanciaText:setReferencePoint(display.CenterLeftReferencePoint)
--	distanciaText.x = 0
--	distanciaText.y = 80
end


-------------------------------------------------------------
-- Function to pass each time player collides with a tortilla

function score:tortillaPoint()
	if (self.tortilla <= 4) then
		self.tortilla = self.tortilla + 1
		updateTortillaImage(self.tortilla)

	end
end

-------------------------------------------------------------
--Function to pass each time player collides with a cacao
--function score:cacaoPoint()
--	self.cacao = self.cacao + 1
--	cacaoText.text =  ..self.cacao
--end



-------------------------------------------------------------
-- Function called to update and display image of tortilla stack
--function score:updateTortillaImage(tortilla)

--	local tortillaIndicador
--	if (tortilla == 0)
--		then tortillaIndicador = display.newImage("assets/images/tortillas0")
--		elseif (tortilla == 1)
--			then tortillaIndicador = display.newImage("assets/images/tortillas1")
--			elseif (tortilla == 2)
--				then tortillaIndicador = display.newImage("assets/images/tortillas2")
--				elseif(tortilla == 3)
--					then tortillaIndicador = display.newImage("assets/images/tortillas3")
--					elseif(tortilla == 4)
--						then tortillaIndicador = display.newImage("assets/images/tortillas4")
--					else 
--						tortillaIndicador = display.newImage("assets/images/tortillas5")
--					end
--				end
--			end
--		end
--	end
--	self.scoresDisplay:insert(tortillaIndicador)
--end


--------------------------------------------------------------
--Get and Set Functions

function score:getTortillaPoints()
	return self.tortilla
end

function score:setTortillaPoints(tortillaPt)
	self.tortilla = tortillaPt
end

function score:getCacaoPoints()
	return self.cacao
end

function score:setCacaoPoints(cacaoPt)
	self.cacao = cacaoPt
end

function score:getDistancia()
	return self.distancia
end

function score:setDistancia (distanciaPt)
	self.distancia = distanciaPt
end

