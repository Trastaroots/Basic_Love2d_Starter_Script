  debugPanel = false
  
  local StartChrono = love.timer.getTime()
  local chrono = 0
  
  function UpdateDtTimer()
    
    chrono  = love.timer.getTime()- StartChrono
    
  end
  
  function DebugPanel()
    
    if debugPanel == true then
      love.graphics.setColor(unpack(colors.black_B))
      love.graphics.rectangle("fill",0,0,205,170)  
      love.graphics.setColor(unpack(colors.green_A))
      love.graphics.print("Current FPS: "..tostring(currentFps),5,5)
      love.graphics.print("Current Time: "..tostring(currentTime),5,20)
      love.graphics.print("In-Game Time: "..math.floor(chrono) .." sec",5,35)
      love.graphics.print("Resolution: "..tostring(screenWidth)..(" X ")..tostring(screenHeight)..(" px"),5,50)
      local stats = love.graphics.getStats()
      local str = string.format("Texture Memory Used: %.2f MB",stats.texturememory/1024/1024)
      love.graphics.print(str,5,65)
      love.graphics.print("--------------------------------------------------",5,80)
      love.graphics.print("MouseX: "..tostring(mouseX),5,95)
      love.graphics.print("MouseY: "..tostring(mouseY),5,110)
      love.graphics.print("--------------------------------------------------",5,125)
      love.graphics.print("-- Press Tab to hide debugPanel --",5,140)
      
      if guideLines == false then
        love.graphics.print("-- Press G to show guideLines --",5,155)
      else
        love.graphics.print("-- Press G to hide guideLines --",5,155)
      end
    else
      love.graphics.setColor(unpack(colors.black_B))
      love.graphics.rectangle("fill",0,0,215,35)
      
      love.graphics.setColor(unpack(colors.green_A))    
      love.graphics.print("-- Press Tab to open debugPanel --",5,5)
      
      if guideLines == false then
        love.graphics.print("-- Press G to show guideLines --",5,20)
      else
        love.graphics.print("-- Press G to hide guideLines --",5,20)
      end
    end

    return DebugPanel
  
  end
