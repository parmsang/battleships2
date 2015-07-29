require_relative 'ship'
class Board
  def initialize
    @board_size = [10, 10]
    @board = Array.new(@board_size[0]) {Array.new(@board_size[1])}
  end

  attr_reader :board

  def place(ship, x, y)
    fail "Existing ship already at that location!" if board[y-1][x-1]
    board[y-1][x-1] = ship
  end

end
