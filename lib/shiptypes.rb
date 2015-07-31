class ShipTypes
  DESTROYER_SIZE = 2
  CRUISER_SIZE = 3
  SUBMARINE_SIZE = 3
  BATTLESHIP_SIZE = 4
  CARRIER_SIZE = 5

  attr_reader :size

  def initialize(size)
    @size = size
  end

  def self.destroyer
    new(DESTROYER_SIZE)
  end

  def self.battleship
    new(BATTLESHIP_SIZE)
  end
end