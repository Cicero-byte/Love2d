function love.load()
    x, y, h, w = 100, 200, 50,50

end

function love.update()
    right = love.keyboard.isDown("d")
    left = love.keyboard.isDown("a")
    up = love.keyboard.isDown("w")
    down = love.keyboard.isDown("s")

    if right then
        x = x + 20
    end

    if left then
        x = x - 20
    end
    if up then
        y = y - 20
    end
    if down then
        y = y + 20
    end



end

function love.draw()
    love.graphics.rectangle("line", x, y, h, w)

end