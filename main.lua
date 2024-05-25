---@diagnostic disable: lowercase-global
local love = require "love"
local Game = require "Game"
local Button = require "Components.Button"

function LoadMenu()
    game.button_state.menu.play_game = Button(230, 100, "Game mới", nil, nil)
end

function love.load()
    game = Game();
    game.state["menu"] = true
    LoadMenu()
end

function love.update(dt)
    if game.state["menu"] then
        
    end
end

function love.draw()
    if game.state["menu"] then
        game:DrawMenuGame()
        game.button_state.menu.play_game:draw(20, 35, 10, 10)
    end
end