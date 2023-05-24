require_relative './helper_spec'

describe TrimmerDecorator do
  before :each do
    @person = Person.new 25, 'Modulasoblangatas', parent_permission: true
    @decorator = TrimmerDecorator.new(@person)
  end

  describe '#new' do
    it 'returns a TrimmerDecorator object' do
      expect(@decorator).to be_an_instance_of TrimmerDecorator
    end
  end

  describe '#correct_name' do
    it 'returns the correct name' do
      expect(@decorator.correct_name).to eql 'Modulasobl'
    end
  end
end
