require_relative 'ship'
class Board


  def initialize(ships = 0)
    @board = []
  end

  def place ship
    @board << ship
  end

end
