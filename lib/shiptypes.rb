module ShipTypes
  DESTROYER_SIZE = 2
  CRUISER_SIZE = 3
  SUBMARINE_SIZE = 3
  BATTLESHIP_SIZE = 4
  CARRIER_SIZE = 5

  def self.destroyer
    Ship.new(DESTROYER_SIZE)
  end

  def self.battleship
    Ship.new(BATTLESHIP_SIZE)
  end

  def self.submarine
    Ship.new(SUBMARINE_SIZE)
  end

  def self.cruiser
    Ship.new(CRUISER_SIZE)
  end

  def self.carrier
    Ship.new(CARRIER_SIZE)
  end

end