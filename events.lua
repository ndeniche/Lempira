local beginX 
local beginY  
local endX  
local endY 
 
local xDistance  
local yDistance  
 
function checkSwipeDirection()

        xDistance =  math.abs(endX - beginX) -- math.abs will return the absolute, or non-negative value, of a given value. 
        yDistance =  math.abs(endY - beginY)
        
        if xDistance > yDistance then
                if beginX > endX then
                        --left
                else 
                        --right
                end
        else 
                if beginY > endY then
                        print("swipe up")
                else 
                        --down
                end
        end
        
end
 
 
function jump(event)
        if event.phase == "began" then
                beginX = event.x
                beginY = event.y
        end
        
        if event.phase == "ended"  then
                endX = event.x
                endY = event.y
                checkSwipeDirection();
        end
end
 
Runtime:addEventListener("touch", jump)
