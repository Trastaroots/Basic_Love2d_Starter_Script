  debugPanel = false
  
  function DebugPanel()
    
    if debugPanel == true then
      love.graphics.setColor(unpack(colors.black_A))
      love.graphics.rectangle("fill",0,0,205,155)  
      love.graphics.setColor(unpack(colors.green_A))
      love.graphics.print("Current FPS: "..tostring(currentFps),5,5)
      love.graphics.print("Current Time: "..tostring(currentTime),5,20)
      love.graphics.print("Resolution: "..tostring(screenWidth)..(" X ")..tostring(screenHeight)..(" px"),5,35)
      local stats = love.graphics.getStats()
      local str = string.format("Texture memory used: %.2f MB", stats.texturememory / 1024 / 1024)
      love.graphics.print(str, 5, 50)
      love.graphics.print("--------------------------------------------------",5,65)
      love.graphics.print("MouseX: "..tostring(mouseX),5,80)
      love.graphics.print("MouseY: "..tostring(mouseY),5,95)
      love.graphics.print("--------------------------------------------------",5,110)
      love.graphics.print("-- Press Tab to hide debugPanel --",5,125)
      
      if guideLines == false then
        love.graphics.print("-- Press G to show guideLines --",5,140)
      else
        love.graphics.print("-- Press G to hide guideLines --",5,140)
      end
    else
      love.graphics.setColor(unpack(colors.black_A))
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
