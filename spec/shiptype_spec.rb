require 'shiptypes'

describe Ship do
  subject { ShipTypes.destroyer }

  it { is_expected.to respond_to(:size) }

  describe 'knows the sizes of ships' do
    it "knows the size of a destroyer" do
      expect(ShipTypes::DESTROYER_SIZE).to eq 2
    end

    it "knows the size of a cruiser" do
      expect(ShipTypes::CRUISER_SIZE).to eq 3
    end

    it "knows the size of a submarine" do
      expect(ShipTypes::SUBMARINE_SIZE).to eq 3
    end

    it "knows the size of a battleship" do
      expect(ShipTypes::BATTLESHIP_SIZE).to eq 4
    end

    it "knows the size of a carrier" do
      expect(ShipTypes::CARRIER_SIZE).to eq 5
    end
  end

  describe '.destroyer' do
    let(:destroyer) { ShipTypes.destroyer }
    it "creates a new instance" do
      expect(destroyer).to be_a ShipTypes
    end

    it "makes a ship with a size of 2" do
      expect(destroyer.size).to eq ShipTypes::DESTROYER_SIZE
    end
  end

  describe '.battleship' do
    let(:battleship) { ShipTypes.battleship }

    it "creates a new instance" do
      expect(battleship).to be_a ShipTypes
    end

    it "makes a ship with a size of 4" do
      expect(battleship.size).to eq ShipTypes::BATTLESHIP_SIZE
    end
  end
end