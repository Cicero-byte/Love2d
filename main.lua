require("square")

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