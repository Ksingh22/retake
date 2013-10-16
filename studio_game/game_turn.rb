require_relative 'player'
require_relative 'die'
require_relative 'treasure_trove'
module GameTurn
	def self.take_turn(player)
		
	
	die = Die.new
   	number_rolled  = die.roll

	   	if number_rolled < 3
	   		player.blam
		elsif number_rolled < 5
			 puts "#{player.name} was skipped"    
		else
			player.w00t
		end
		 # puts player
		 treasure = TreasureTrove.random
		 player.found_treasure(treasure)
		
  end
end

if __FILE__ == $0
  player = Player.new("curly", 125)
  GameTurn.take_turn(player)
end