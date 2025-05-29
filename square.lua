Square = {}
Square.__index = Square

function Square.new(mode, x, y, h, w)
    local self = setmetatable({}, Square)
    self.x = x
    self.y = y
    self.w = w
    self.h = h
    self.mode = mode
    return self
end

function Square:draw()

    love.graphics.rectangle(self.mode, self.x, self.y, self.h, self.w)
    
end

function checkCollision(a, b)

    local a_left = a.x
    local a_right = a.x + a.w
    local a_top = a.y
    local a_bottom = a.y + a.h

    local b_left = b.x
    local b_right = b.x + b.w
    local b_top = b.y
    local b_bottom = b.y + b.h

    return  a_right > b_left
        and a_left < b_right
        and a_bottom > b_top
        and a_top < b_bottom

end