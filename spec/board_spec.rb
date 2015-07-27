require 'board'

describe Board do
  describe '#place' do
    it 'places ship in board location' do
      expect { subject.to respond_to(:place).with(1).argument }
      ship = double :ship
      expect { subject.place ship }
    end
  end
end
