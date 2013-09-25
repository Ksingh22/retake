require_relative 'game'
require 'rspec'

describe Game do

  before do
    @game = Game.new("Ping-Pong")

    @initial_health = 100
    @player = Player.new("marlon", @initial_health)
    
    @game.add_player(@player)
  end
  
end