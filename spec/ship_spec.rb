require 'ship'

describe Ship do
  describe '#size_choices' do
    it { is_expected.to respond_to(:size_choices).with(1).argument }

    it 'raises an error if choice is not valid' do
      expect { subject.size_choices(!1) }.to raise_error 'Size choice not valid'
    end

    it 'creates a ship the size of the input' do
      subject.size_choices(1)
      expect(subject.size).to eq 1
    end
  end

  describe '#rotate' do
    it { is_expected.to respond_to(:rotate).with(1).argument }

    it 'raises an error if choice is not a direction' do
      expect { subject.rotate('agfgf') }.to raise_error 'Direction choice not valid'
    end

    it 'constrains ship direction to valid directions only' do
      invalid_direction = 'dgdfgfgfdg'
      expect { subject.rotate(invalid_direction) }.to raise_error 'Direction choice not valid'
    end

    it 'specifies ship direction' do
      subject.rotate('NS')
      expect(subject.rotation).to eq 'NS'
    end
  describe "#hit" do
      it { is_expected.to respond_to(:hit) }
      it "should not be hit when initialized" do
        expect(subject.query_if_hit).to eq false
      end
      it " should register the hit when hit" do
        subject.hit
        expect(subject.query_if_hit).to eq true
      end
    end
  end
  describe "#sunk" do
    it "should not be sunk when initialized" do
      expect(subject.sunk).to eq false
    end
    it "should sink the ship" do
      subject.hit
      expect(subject.sunk?).to eq true
    end
  end
end
