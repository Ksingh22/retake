require_relative 'game'
require_relative 'game_turn'
require 'rspec'

describe Game do
  before do
  	$stdout = StringIO.new # stops the output coming from players.rb

    @game = Game.new("Ping-Pong")

    @initial_health = 100
    @player = Player.new("marlon", @initial_health)
    
    @game.add_player(@player)
  end

  it "w00ts the player if a high number is rolled" do
	Die.any_instance.stub(:roll).and_return(5)
    @game.play(1)
    @player.health.should == @initial_health + 15
	end

 it "skips the player if a medium number is rolled" do
  	Die.any_instance.stub(:roll).and_return(3)
    @game.play(2)
    @player.health.should == @initial_health
    end

    it "blam the player if a low number is rolled" do
  	Die.any_instance.stub(:roll).and_return(2)
    @game.play(1)
    @player.health.should == @initial_health - 10
    end

    it "assigns a treasure for points during a player's turn" do     
   @game.play(1)
   @player.points.should_not be_zero
end
it "yields each found treasure and its total points" do
  @player.found_treasure(Treasure.new(:skillet, 100))
  @player.found_treasure(Treasure.new(:skillet, 100))
  @player.found_treasure(Treasure.new(:hammer, 50))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))
  
  yielded = []
  @player.each_found_treasure do |treasure|
    yielded << treasure
  end
  
  yielded.should == [
    Treasure.new(:skillet, 200), 
    Treasure.new(:hammer, 50), 
    Treasure.new(:bottle, 25)
 ]
end
end