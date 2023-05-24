require_relative './helper_spec'

describe NameDecorator do
  before :each do
    @nameable = Nameable.new
    @decorator = NameDecorator.new(@nameable)
  end

  describe '#new' do
    it 'returns a NameDecorator object' do
      expect(@decorator).to be_an_instance_of NameDecorator
    end
  end

  describe '#correct_name' do
    it 'raises a NotImplementedError' do
      expect { @decorator.correct_name }.to raise_error(NotImplementedError)
    end
  end
end
