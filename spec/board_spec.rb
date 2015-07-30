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
      expect{subject.place(ship,0,0)}.to raise_error "Out of board boundaries!"
    end
    it "raise error if ship is placed on existing ship" do
      subject.place(ship,1,1)
      expect{subject.place(ship,1,1)}.to raise_error "Existing ship already at that location!"
    end
  end
  describe "#fire" do
    it { is_expected.to respond_to(:fire).with(2).arguments }
    it "at the board" do
      subject.fire(1,1)
      expect(subject.fired[0][0]).to eq true
    end
    it "raises erro if fired outside of the board" do 
      expect{subject.fire(0,0)}.to raise_error "Fired outside of board boundaries!"
    end
    it "raises error if fired at same place twice" do
      subject.fire(1,1)
      expect{subject.fire(1,1)}.to raise_error "Already fired at that location!"
    end
    it "should hit the ship" do 
      board.place(ship,1,1)
      board.fire(1,1)
      expect(ship).to have_received (:hit)
    end
  end
end
