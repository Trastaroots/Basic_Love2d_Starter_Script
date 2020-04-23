guideLines = false

function GuideLines()
  
  if guideLines == true then
    love.graphics.setColor(0.5,0.5,0.5,0.25)
    love.graphics.line(sOriginX,0,sOriginX,screenHeight)
    love.graphics.line(0,sOriginY,screenWidth,sOriginY)
  
    love.graphics.setColor(0,1,0)
    love.graphics.setPointSize(5)
    love.graphics.points(sOriginX,sOriginY)
  end
  
  return GuideLines
  
end
