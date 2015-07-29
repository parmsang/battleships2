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
  end
end
