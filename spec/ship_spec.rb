require 'ship'

describe Ship do
  describe '#initialize#size#direction' do
  	let(:ship) {Ship.new(3, "vertical")}
    it 'allows players to choose from a range of ship sizes and ship direction' do
    	expect(ship.size).to eq 3
      expect(ship.direction).to eq "vertical"
    end
  end

end
