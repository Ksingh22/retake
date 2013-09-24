class Robot

  def initialize
    @placed_on_grid = false
    @x = nil
    @y = nil
  end

  def command(arg)
    if (what_cmd(arg) == 'PLACE')
      @placed_on_grid = true
      set_x_and_y arg
      error
    elsif  arg == "REPORT" && @placed_on_grid == true
      "#{@x},#{@y},#{@direction}"

    #elsif arg == "LEFT" && @placed_on_grid == true
    #  left
    else
      "Error, first command must be PLACE"
    end
  end


  def error
    if @x.to_i <= 6 && @y.to_i <= 6 && @x.to_i >=0 && @y.to_i >=0
      return "PLACE Succeeded"
    else
      return "Error, PLACE must be on grid"
    end
  end


#####Jarrod's helper methods
  def set_x_and_y arg
    @x, @y, @direction = arg.sub('PLACE ', '').split(',')


  end

end