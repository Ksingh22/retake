require_relative 'player'
require 'rspec'
describe Player do
	before do
		$stdout = StringIO.new # stops the output coming from players.rb
	@initial_health = 100 
	   @player = Player.new("kamal", @initial_health)
		end

	it "has captilized name" do
		@player.name.should == "Kamal"
    end

	it "has an initial health" do
		@player.health.should == 100
	end

	it "has a string representation" do
		@player.to_s.should == "I'm Kamal with a health of 100 and a score of 105."
	end

	it "Player computes a score as the sum of its health and length of name" do
	    @player.score.should == 105	
	end

	it "Player increases health by 15 when w00ted" do
		@player.w00t
		@player.health.should == 115
	end

	it "Player decreases health by 10 when w00ted" do
		@player.blam
		@player.health.should == 90
	end
    
 context "with a health greater than 100" do
    before do
      @player = Player.new("larry", 110)
    end
  
    it "is strong" do
      @player.strong?.should be_true
    end
   end

context "with a health less than 100" do
    before do
      @player = Player.new("larry", 90)
    end

   it "is wimpy" do
    	@player.strong?.should be_false
    end
end

end
