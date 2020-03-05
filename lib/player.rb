class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end


  # def name()
  #   Player.new
  # end
end


#Instead of storing player names as strings in the 
#session, store them as attributes of instances of the 
#Player class in global variables (declared using $)
