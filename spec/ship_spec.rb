require 'ship'

describe Ship do
  describe '#size_choices' do
    it { is_expected.to respond_to(:size_choices).with(1).argument }

    it 'should raise an error if choice is not valid' do
      expect { subject.size_choices(!1) }.to raise_error 'Size choice not valid'
    end

    it 'should create a ship the size of the input' do
      subject.size_choices(1)
      expect(subject.size).to eq 1
    end
  end

  describe '#rotate' do
    it { is_expected.to respond_to(:rotate).with(1).argument }

    it 'should raise an error if choice is not valid' do
      expect {subject.rotate('agfgf')}.to raise_error 'Direction choice not valid'
    end

    it 'should specify ship direction' do
      subject.rotate('NS' || 'EW')
      expect(subject.rotation).to eq ('NS' || 'EW')
    end
  end
end
