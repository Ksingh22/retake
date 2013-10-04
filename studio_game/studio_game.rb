	require_relative 'player'
	require_relative 'game'
	require_relative 'game_turn'

	player1 = Player.new("kamal")
    player2 = Player.new("larry")
    player3 = Player.new("curly")

	   Knuckleheads = Game.new("Knuckleheads")
	   
       puts Knuckleheads.title
       Knuckleheads.add_player(player1)
       Knuckleheads.add_player(player2)
       Knuckleheads.add_player(player3)
       Knuckleheads.play(1)
       Knuckleheads.print_stats


       
 #  new game and new player have been added here     
	# marlon = Player.new("marlon")
	# javee =  Player.new("javee")
	# ron =    Player.new("ron")
	# gas =    Player.new("gas")
	# shawn =  Player.new("shawn")

 # Pool = Game.new("Pool")
	#  puts Pool.title
	#  Pool.add_player(marlon)
	#  Pool.add_player(javee)
	#  Pool.add_player(ron)
	#  Pool.add_player(shawn)
	#  Pool.add_player(gas)
	#  Pool.play(3)
	 # Pool.print_stats