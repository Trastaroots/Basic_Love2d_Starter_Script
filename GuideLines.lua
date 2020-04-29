guideLines = false

function GuideLines()
  
  if guideLines == true then
    love.graphics.setColor(unpack(colors.default_B))
    love.graphics.line(sOriginX,0,sOriginX,screenHeight)
    love.graphics.line(0,sOriginY,screenWidth,sOriginY)
  
    love.graphics.setColor(unpack(colors.green_A))
    love.graphics.setPointSize(5)
    love.graphics.points(sOriginX,sOriginY)
  end
  
  return GuideLines
  
end
