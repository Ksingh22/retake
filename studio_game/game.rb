require_relative 'die'
require_relative 'player'
require_relative 'treasure_trove'
 class Game
	attr_reader :title
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(a_player)
		@players << a_player
	end
    def print_stats
    	strong_players = @players.select{|player| player.strong?}
    	wimpy_players = @players.reject{|player| player.strong?}

         puts "\n#{@title} Statistics:"

        puts "\n#{strong_players.size} strong players:"
    	strong_players.each do |player|
        puts "#{player.name} #{player.health}"
    	end
    	
    	puts "\n#{wimpy_players.size} wimpy players:"
        wimpy_players.each do |player|
        puts "#{player.name} (#{player.health})"
    end
    end
	def play(rounds)

        treasures = TreasureTrove::TREASURES
        puts "\nThere are #{treasures.size} treasures to be found:"
        treasures.each do |treasure|
            puts "A #{treasure.name} is worth #{treasure.points} points"
        end

		puts "\nThere are #{@players.size} players in the #{@title}"

	 	@players.each do |player|
		puts player
	end

     1.upto(rounds) do |round|
     puts "\nRound #{round}:"
    @players.each do |player|
   	GameTurn.take_turn(player)
	puts player
	end
	end
	end
end
if __FILE__ == $0
player67 = Player.new("kamal", 110)
 

 yes = Game.new("yes")
 yes.add_player(player67)
 yes.print_stats

end