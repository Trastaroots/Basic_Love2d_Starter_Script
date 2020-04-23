  debugPanel = false
  
  function DebugPanel()
    if debugPanel == true then
      love.graphics.setColor(0,0,0,0.75)
      love.graphics.rectangle("fill",0,0,205,140)  
      love.graphics.setColor(0,1,0)
      love.graphics.print("Current FPS: "..tostring(currentFps),5,5)
      love.graphics.print("Current Time: "..tostring(currentTime),5,20)
      love.graphics.print("Resolution: "..tostring(screenWidth)..(" X ")..tostring(screenHeight)..(" px"),5,35)
      love.graphics.print("--------------------------------------------------",5,50)
      love.graphics.print("MouseX: "..tostring(mouseX),5,65)
      love.graphics.print("MouseY: "..tostring(mouseY),5,80)
      love.graphics.print("--------------------------------------------------",5,95)
      love.graphics.print("-- Press Tab to hide debugPanel --",5,110)
      
      if guideLines == false then
        love.graphics.print("-- Press G to show guideLines --",5,125)    
      else
        love.graphics.print("-- Press G to hide guideLines --",5,125)    
      end
    else
      love.graphics.setColor(0,0,0,0.75)
      love.graphics.rectangle("fill",0,0,215,35)
      
      love.graphics.setColor(0,1,0)    
      love.graphics.print("-- Press Tab to open debugPanel --",5,5)
      
      if guideLines == false then
        love.graphics.print("-- Press G to show guideLines --",5,20)
      else
        love.graphics.print("-- Press G to hide guideLines --",5,20)
      end
    end

    return DebugPanel
  
  end
