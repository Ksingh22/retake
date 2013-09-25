class Player
attr_reader  :health, :score
attr_accessor :name   # player name and health can be accessible now from outside the class 
	def initialize(name, health = 100)
	@name = name.capitalize
	@health = health
	
    end

def to_s
  "I'm #{@name.capitalize} with a health of #{@health} and a score of #{score}."
end

def blam
	@health -=10
	puts "#{@name} got blammed and now health is #{@health}"
end

def w00t
	@health += 15
	puts "#{@name} got w00ted and now health is #{@health}"
end
def score
     @name.length + @health
end
end
if __FILE__ == $0
	player1 = Player.new("kamal")
    player2 = Player.new("larry")
    player3 = Player.new("curly")
    

   players = [player1, player2, player3]
   players.pop  # This removes the last player in array which is curly
   player4 = Player.new("Shemp", 90)
   players.push(player4)

end

 class Game
	attr_reader :title
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(a_player)
		@players << a_player
	end
	def play
	puts "There are #{@players.size} players in the #{@title}"

 	@players.each do |player|
	puts player
end
@players.each do |player|
	puts player.w00t
	puts player.blam

	puts player
   end
	
	end
end
	player1 = Player.new("kamal")
    player2 = Player.new("larry")
    player3 = Player.new("curly")

	   Knuckleheads = Game.new("Knuckleheads")
       puts Knuckleheads.title
       Knuckleheads.add_player(player1)
       Knuckleheads.add_player(player2)
       Knuckleheads.add_player(player3)
       Knuckleheads.play

       
  # new game and new player have been added here     
 marlon = Player.new("marlon")
 javee = Player.new("javee")
 ron = Player.new("ron")
 gas = Player.new("gas")
 shawn = Player.new("shawn")

 Pool = Game.new("Pool")
 puts Pool.title
 Pool.add_player(marlon)
 Pool.add_player(javee)
 Pool.add_player(ron)
 Pool.add_player(shawn)
 Pool.add_player(gas)
 Pool.play

		





















# name1 = "larry"
# health1 = 30
# name2 = "curly"
# health2 = health1

# name3 = "moe"
# health3 = 100

# name4 = "shemp"
# health4 = 90

# # puts name +  '\'s'  ' initial health is ' + initial_health.to_s
# puts "#{name1.capitalize}'s initial health is #{health1}"
# puts "#{name2.upcase} initial health is #{health2}"
# puts "#{name3.capitalize} has a health of #{health3}".center(50, '*')
# puts "#{name4.capitalize.ljust(30, '.')} initial health is #{health4}"

# # puts "Players: \n\t#{name1}\n\t#{name2}\n\t#{name3}" 

# def say_hello(name, health= 100)
# 	@name =name
# 	@health = health
# 	"I'm #{name.capitalize} with a health of #{health}"
		
# end

# puts say_hello('kamal')
# puts @name