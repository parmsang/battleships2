require 'ship'

describe Ship do
  #it { is_expected.to respond_to :place}

  it {is_expected.to respond_to(:place).with(1).argument}

  end

end
