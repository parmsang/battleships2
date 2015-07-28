
class Ship

  attr_accessor :size, :direction

  def initialize(size, direction)
    @size = size
    @direction = direction
    # @directions = ['North', 'South', 'East', 'West']
  end



    # puts "Choose from these ship sizes (in units): 2, 3, 4, 5"
    #   ship_size = gets.chomp
    # fail "That is not a valid selection" if @sizes.delete(ship_size) != ship_size
    # ship_size


  # def direction ()
  #   puts "Choose direction to face your ship: North, South, East, West"
  #     direction = gets.chomp
  # end

end
