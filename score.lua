
-------------------------------------------------
-- Score.lua
-------------------------------------------------
 
local score = {}
local score_mt = { __index = score }  -- metatable
 


--------------------------------------------------------
function score.new()  -- constructor
	

	-- Initialize Score Variables
	local tortilla = 0
	local cacao = userdata.returnCacaoTotal()
	local distancia = 0
	local health = 3
	local scoresDisplay=display.newGroup()
	--------------------------------------------------
	-- Text variable to maintain distance score
	local distanciaText = display.newText(" " ..self.distancia, 0, 0)
	distanciaText:setReferencePoint(display.CenterLeftReferencePoint)
	distanciaText.x = 0
	distanciaText.y = 80


	-- Text variable to maintain cacao score
	local cacaoText = display.newText(" " ..self.cacao, 0, 0)
	cacaoText:setReferencePoint(display.CenterLeftReferencePoint)
	cacaoText.x = 100
	cacaoText.y = 80

	----------------------------------------------------
	--Set initial tortilla displays
	updateTortillaImage(tortilla)

	local newScore={
	tortilla = tortilla,
	cacao = cacao,
	distancia = distanciaText,
	health = health,
	scoresDisplay = scoresDisplay
	}
	
	return setmetatable( newScore, score_mt)
end



function distanciaPoint()
-- Updates distance based on blocks passed
	self.distancia = self.distancia + 1
	distanciaText.Text = (" " ..self.distancia)
	distanciaText:setReferencePoint(display.CenterLeftReferencePoint)
	distanciaText.x = 0
	distanciaText.y = 80
end


-------------------------------------------------------------
-- Function to pass each time player collides with a tortilla

function tortillaPoint()
	if (self.tortilla <= 4) then
		self.tortilla = self.tortilla + 1
		updateTortillaImage(self.tortilla)

	end
end

-------------------------------------------------------------
--Function to pass each time player collides with a cacao
function cacaoPoint()
	self.cacao = self.cacao + 1
end



-------------------------------------------------------------
-- Function called to update and display image of tortilla stack
function updateTortillaImage(tortilla)

	local tortillaIndicador
	if (tortilla == 0)
		then tortillaIndicador = display.newImage("assets/images/tortillas0")
		elseif (tortilla == 1)
			then tortillaIndicador = display.newImage("assets/images/tortillas1")
			elseif (tortilla == 2)
				then tortillaIndicador = display.newImage("assets/images/tortillas2")
				elseif(tortilla == 3)
					then tortillaIndicador = display.newImage("assets/images/tortillas3")
					elseif(tortilla == 4)
						then tortillaIndicador = display.newImage("assets/images/tortillas4")
					else 
						tortillaIndicador = display.newImage("assets/images/tortillas5")
					end
				end
			end
		end
	end
	self.scoresDisplay:insert(tortillaIndicador)
end


--------------------------------------------------------------
--Get and Set Functions

function getTortillaPoints
	return self.tortilla
end

function setTortillaPoints(tortillaPt)
	self.tortilla = tortillaPt
end

function getCacaoPoints
	return self.cacao
end

function setCacaoPoints(cacaoPt)
	self.cacao = cacaoPt
end

function getDistancia
	return self.distancia
end

function setDistancia (distanciaPt)
	self.distancia = distanciaPt
end

