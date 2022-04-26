import "CoreLibs/graphics"
local gfx = playdate.graphics
local color = gfx.kColorBlack
local function toggle_color()
  if (color == gfx.kColorBlack) then
    color = gfx.kColorWhite
  else
    color = gfx.kColorBlack
  end
  return nil
end
playdate.update = function()
  gfx.setColor(color)
  return gfx.fillRect(50, 50, 80, 80)
end
playdate.AButtonDown = function()
  return toggle_color()
end
return playdate.AButtonDown
