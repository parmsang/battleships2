require_relative 'ship'
require_relative 'shiptypes'

class Board
  def initialize
    @ships = []
    @board_size = [10, 10]
    @board = Array.new(@board_size[0]) {Array.new(@board_size[1])}
    @fired = Array.new(@board_size[0]) {Array.new(@board_size[1]){false}}
  end

  attr_reader :board, :fired, :ships

  def place(ship, x, y)
  	fail "Out of board boundaries!" if x < 1 || x > @board_size[0] || y < 1 || y > @board_size[1]
    fail "Existing ship already at that location!" if board[y-1][x-1] != nil
    board[y-1][x-1] = ship
    ships << ship
  end

  def fire(x,y)
  	fail "Fired outside of board boundaries!" if x < 1 || x > @board_size[0] || y < 1 || y > @board_size[1]
  	fail "Already fired at that location!" if fired[y-1][x-1] == true
  	fired[y-1][x-1] = true
    if board[y-1][x-1] != nil
      board[y-1][x-1] = ships[0].hit
      board[y-1][x-1] = ships[0].sunk?
    end
  end

  #private

  attr_reader :ship_limit

  def ship_range(ship, x, y)
    i = 0
    ship.size_choices(4).times {ship.rotation == "NS" ? board[y+i-1][x-1] = ship : board[y-1][x+i-1] = ship ; i+=1}
  end
end
