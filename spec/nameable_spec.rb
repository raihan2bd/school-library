require_relative './helper_spec'

describe Nameable do
  before :each do
    @nameable = Nameable.new
  end

  describe '#new' do
    it 'returns a Nameable object' do
      expect(@nameable).to be_an_instance_of Nameable
    end
  end

  describe '#correct_name' do
    it 'raises a NotImplementedError' do
      expect { @nameable.correct_name }.to raise_error(NotImplementedError)
    end
  end
end
