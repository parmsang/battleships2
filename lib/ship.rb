
class Ship
  def initialize
    @size_choices = [1]
    @rotations = ["NS", "EW"]
    @query_if_hit = false
    @sunk = false
  end

  attr_reader :size, :rotation, :query_if_hit, :sunk

  def size_choices(size)
    fail "Size choice not valid" unless @size_choices.include?(size)
    @size = size
  end

  def rotate(direction)
    fail "Direction choice not valid" unless @rotations.include?(direction)
    @rotation = direction
  end

   def hit
    @query_if_hit = true
  end

  def sunk?
    @sunk = true
  end
end
