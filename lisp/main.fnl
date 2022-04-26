(lua "import \"CoreLibs/graphics\"")

; shorhand
(local gfx playdate.graphics)

(var color gfx.kColorBlack)
(fn toggle-color []
  (set color (if (= color gfx.kColorBlack)
                 gfx.kColorWhite
                 gfx.kColorBlack)))

(fn playdate.update []
  (do
    (gfx.setColor color)
    (gfx.fillRect 50 50 80 80)))

(fn playdate.AButtonDown []
  (toggle-color))

