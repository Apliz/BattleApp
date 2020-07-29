class Player

  attr_reader :name, :hit_points 

  def initialize(name, hp = 100)
    @name = name
    @hit_points = hp
  end 

  def attack
    @hit_points -= 10
  end

end


#Instead of storing player names as strings in the 
#session, store them as attributes of instances of the 
#Player class in global variables (declared using $)
