local Square = {}
Square.__index = Square

function Square.new(x, y, h, w)
    local self = setmetatable({}, Square)
    self.x = x
    self.y = y
    self.w = w
    self.h = h
    return self
end

function Square:draw()
    love.graphics.rectangle("line", self.x, self.y, self.h, self.w)
end



function love.load()
    
    square = Square.new(100, 200, 50,50)

end

function love.update()
    right = love.keyboard.isDown("d")
    left = love.keyboard.isDown("a")
    up = love.keyboard.isDown("w")
    down = love.keyboard.isDown("s")

    if right then
        square.x = square.x + 20
    end

    if left then
        square.x = square.x - 20
    end
    if up then
        square.y = square.y - 20
    end
    if down then
        square.y = square.y + 20
    end


end

function love.draw()
    square:draw()
end