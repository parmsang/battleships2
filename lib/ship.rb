
class Ship
  def initialize
    @sizes = ['2', '3', '4', '5']
    @directions = ['North', 'South', 'East', 'West']
  end

  def sizes (ship_size = 0)
    puts "Choose from these ship sizes (in units): 2, 3, 4, 5"
      ship_size = gets.chomp
    fail "That is not a valid selection" if @sizes.delete(ship_size) != ship_size
    ship_size 
  end

  def direction ()
    puts "Choose direction to face your ship: North, South, East, West"
      direction = gets.chomp
  end



end
