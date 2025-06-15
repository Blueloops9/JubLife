local vector2 = require("vector2")
local inputhandler = require("inputhandler")

love.keypressed = inputhandler.KeyDown
love.keyreleased = inputhandler.KeyUp

local Value = 0

inputhandler.RegisterKey("w",function(a)
    Value=a
end)

function love.draw()
    love.graphics.print(Value)
end