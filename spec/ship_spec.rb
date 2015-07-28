require 'ship'

describe Ship do
  describe '#initialize#size' do
  	let(:ship) {Ship.new(3)}
    it 'allows players to choose from a range of ship sizes' do	
    	expect(ship.size).to eq 3
    end
  end
end
	