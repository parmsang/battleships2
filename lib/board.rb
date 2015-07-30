require_relative 'ship'
class Board
  def initialize
    @board_size = [10, 10]
    @board = Array.new(@board_size[0]) {Array.new(@board_size[1])}
    @fired = Array.new(@board_size[0]) {Array.new(@board_size[1]){false}}
  end

  attr_reader :board, :fired

  def place(ship, x, y)
  	fail "Out of board boundaries!" if x < 1 || x > @board_size[0] || y < 1 || y > @board_size[1]
    fail "Existing ship already at that location!" if board[y-1][x-1] != nil
    board[y-1][x-1] = ship
  end

  def fire(ship, x,y)
  	fail "Fired outside of board boundaries!" if x < 1 || x > @board_size[0] || y < 1 || y > @board_size[1]
  	fail "Already fired at that location!" if fired[y-1][x-1] == true
  	fired[y-1][x-1] = true
    board[y-1][x-1] != nil ? ship.hit : false
  end

end
