require "board"
require "ship"

describe "Features" do
	let(:board) { Board.new }
	let(:ship) { Ship.new }
	describe "Ship" do
		describe "#size_choices" do
		 	it { expect(ship).to respond_to(:size_choices).with(1).argument }
			it 'can choose a size for the ship' do
		    expect { ship.size_choices(1) }.not_to raise_error
		  end
		  it { expect(ship).to respond_to(:size) }
		  it "sets ship size to be the inputted value" do
		  	ship.size_choices(1)
		  	expect(ship.size).to eq 1
		  end
	 	  it 'raises an error if choice is not valid' do
	 	   expect { ship.size_choices(!1) }.to raise_error 'Size choice not valid'
	 	  end
	 	end
	 	describe "#rotate" do
	 		it { expect(ship).to respond_to(:rotate).with(1).argument }
	 		it "can choose ships direction" do
				expect { ship.rotate("NS") }.not_to raise_error
				expect { ship.rotate("EW") }.not_to raise_error
	 		end
	 		it "sets the rotation to north-south" do
	 			ship.rotate("NS")
	 			expect(ship.rotation).to eq "NS"
	 		end
	 		it "sets the rotation to east-west" do
	 			ship.rotate("EW")
	 			expect(ship.rotation).to eq "EW"
	 		end
	 		it "raises an arror if choice is not valid" do
	 			expect { ship.rotate(!("NS" || "EW")) }.to raise_error "Direction choice not valid"
	 	  end
	 	end
	 	describe "#hit" do
      it { expect(ship).to respond_to(:hit) }
      it "should not be hit when initialized" do
        expect(ship.query_if_hit).to eq false
      end
      it " should register the hit when hit" do
      	ship.hit
        expect(ship.query_if_hit).to eq true
      end
	 	end
	end
	describe "Board" do
		describe "#place" do
			it { expect(board).to respond_to(:place).with(3).argument }
			it "place ship on board location" do
				board.place(ship,1,1)
				expect(board.board[0][0]).to eq ship
			end
			it "raises error when not placed on the board" do
				expect{board.place(ship,0,0)}.to raise_error "Out of board boundaries!"
			end
			it "raises error when ship is placed on existing ship" do
				board.place(ship,1,1)
				expect{board.place(ship,1,1)}.to raise_error "Existing ship already at that location!"
			end
		end
		describe "#fire" do
			it { expect(board).to respond_to(:fire).with(2).argument}
			it "should fire at the board" do
				board.fire(1,1)
				expect(board.fired[0][0]).to eq true
			end
			it "raises error if fired outside of the board" do
				expect{board.fire(0,0)}.to raise_error "Fired outside of board boundaries!"
			end
			it "raises error if fired at same place twice" do
				board.fire(1,1)
				expect{board.fire(1,1)}.to raise_error "Already fired at that location!"
			end
			it "should hit the ship" do
				board.place(ship,1,1)
				board.fire(1,1)
				expect(ship.query_if_hit).to eq true
			end
			 it "should not be hit when initialized" do
        expect(ship.query_if_hit).to eq false
      end
		end
		describe "#sunk" do
      it "should sink the ship" do
				board.place(ship,1,1)
				board.fire(1,1)
				expect(ship.sunk).to eq true
			end
			it "should not be sunk when initialized" do
        expect(ship.sunk).to eq false
      end
		end
	end
end
