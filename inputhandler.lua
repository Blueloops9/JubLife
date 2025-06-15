local Functions={}
local Keys={}

function Functions.RegisterKey(Key,Function)
    if Keys[Key]==nil then
        Keys[Key]={}
    end
    local RandomID=math.random(10000,99999)
    Keys[Key][RandomID]=Function
end

function Functions.KeyUp(Key)
    if Keys[Key] then
        for I,V in pairs(Keys[Key]) do
            V(0)
        end
    end
end
function Functions.KeyDown(Key)
    if Keys[Key] then
        for I,V in pairs(Keys[Key]) do
            V(1)
        end
    end
end


return Functions