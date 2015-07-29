require 'board'

describe Board do
  let (:ship){double :ship}
  describe '#place' do
    it { is_expected.to respond_to(:place).with(3).argument }
    it 'places ship in board location' do
      subject.place(ship,1,1)
      expect((subject.board)[0] [0]).to eq ship
    end
    it "Should raise an error if ship is not placed on board" do
      expect {subject.place()}
    end
    it "raise error if ship is placed on existing ship" do
      subject.place(ship,1,1)
      expect{subject.place(ship,1,1)}.to raise_error "Existing ship already at that location!"
    end
  end
end
