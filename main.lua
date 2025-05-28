local Square = {}
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


function love.load()
    
    square = Square.new("fill", 100, 200, 50,50)
    square1 = Square.new("line", 100, 200, 50,50)

end

function love.update(dt)
    right = love.keyboard.isDown("d")
    left = love.keyboard.isDown("a")
    up = love.keyboard.isDown("w")
    down = love.keyboard.isDown("s")

    if right then
        square.x = square.x + 300 * dt
    end

    if left then
        square.x = square.x - 300 * dt
    end
    if up then
        square.y = square.y - 300 * dt
    end
    if down then
        square.y = square.y + 300 * dt
    end


end

function love.draw()


    if checkCollision(square, square1) then
        square.mode = "fill"
        
    else
        square.mode = "line"
    end

    square:draw()
    square1:draw()
    
end