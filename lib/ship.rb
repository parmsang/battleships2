
class Ship
  def initialize
    @size_choices = [1]
    @rotations = ["NS", "EW"]
    @hits = false
    @sunks = false
  end

  attr_reader :size, :rotation, :hits, :sunks

  def size_choices(size)
    fail "Size choice not valid" unless @size_choices.include?(size)
    @size = size
  end

  def rotate(direction)
    fail "Direction choice not valid" unless @rotations.include?(direction)
    @rotation = direction
  end

  def hit
    hits = true
  end

  def sunk
    sunks = true
  end

end
