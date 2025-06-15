local vector2={}
vector2.__index=vector2

function vector2.__add(a,b)return vector2.new(a.x+b.x,a.y+b.y)end
function vector2.__sub(a,b)return vector2.new(a.x-b.x,a.y-b.y)end
function vector2.__mul(a,b)
    if type(b)=="table" then return vector2.new(a.x*b.x,a.y*b.y)
    else return vector2.new(a.x*b,a.y*b)end
end
function vector2.__div(a,b)
    if type(b)=="table" then return vector2.new(a.x/b.x,a.y/b.y)
    else return vector2.new(a.x/b,a.y/b)end
end

function vector2.__eq(a,b)return a.x==b.x and a.y==b.y end

function vector2.__tostring(a)return a.x..", "..a.y end
function vector2.Magnitude(a)return math.sqrt(a.x*a.x+a.y*a.y)end
function vector2.Normalize(a)return a/a:Magnitude()end

function vector2.new(x,y)
    local Table={x=x or 0,y=y or 0}
    return setmetatable(Table,vector2)
end

vector2.zero = vector2.new(0,0)
vector2.yAxis = vector2.new(0,1)
vector2.xAxis = vector2.new(1,0)
vector2.one = vector2.new(1,1)

return vector2