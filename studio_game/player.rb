require_relative 'treasure_trove'

class Player
attr_reader  :health, :score
attr_accessor :name   # player name and health can be accessible now from outside the class 

	def initialize(name, health = 100)
	@name = name.capitalize
	@health = health
  @found_treasures = Hash.new(0)
  end


def <=>(other)
    other.score <=> score
 end


def blam
	@health -=10
	puts "#{@name} got blammed and now health is #{@health}"
end

def w00t
	@health += 15
	puts "#{@name} got w00ted and now health is #{@health}"
end


def strong?
  @health > 100
end
def points
   @found_treasures.values.reduce(0,:+)

end
def score
     @health + points
   end

def found_treasure(treasure)
  @found_treasures[treasure.name] += treasure.points
  puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
  puts "#{@name}'s treasures: #{@found_treasures}"
end
def to_s
  "I'm #{@name.capitalize} with a health of #{@health} , points of #{points} and a score of #{score}."
end
def each_found_treasure
  @found_treasures.each do|name, points|
    yield Treasure.new(name,points)
  end
  
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

   players.each do |player|
   	puts player
    puts player.w00t


   end


end

