local vector2 = require("vector2")

function love.draw()
    love.graphics.print(tostring(vector2.new(10,1):Magnitude()))
end