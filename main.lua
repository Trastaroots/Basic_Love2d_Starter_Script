-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
require("GuideLines")
require("DebugPanel")
require("Colors")

sOriginX = nil
sOriginY = nil
currentTime = nil
mouseX = nil
mouseY = nil

-- os.date"%H:%M:%S"

function GetTime()
  local time = os.date"%H:%M:%S"
  return time
end

function love.load()
  
  love.graphics.setBackgroundColor(0,0,0,1)  
  
  screenWidth = love.graphics.getWidth()
  screenHeight = love.graphics.getHeight()
  
  sOriginX = screenWidth/2
  sOriginY = screenHeight/2
  
  love.mouse.setPosition(sOriginX,sOriginY)
  
end

function love.update(dt)
  
  mouseX = love.mouse.getX()
  mouseY = love.mouse.getY()
  
  currentFps = love.timer.getFPS()
  currentTime = GetTime()
  
end

function love.draw()
  
  -- GuideLines should ALWAYS be on first !!
  GuideLines()

  -- DebugPanel should ALWAYS be on last !!
  DebugPanel()
  
end

function love.keypressed(key)
  
  print(key)
  
  if key == "tab" then
    if debugPanel == false then
      debugPanel = true
    else
      debugPanel = false
    end
  end
  
  if key == "g" then
    if guideLines == false then
      guideLines = true
    else
      guideLines = false
    end
  end   
  
  if key == "escape" then
    love.event.quit()
  end
  
end
