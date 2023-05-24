require_relative './helper_spec'


describe CapitalizeDecorator do
  before :each do
    @person = Person.new 25, 'modulasoblangatas', parent_permission: true
    @decorator = CapitalizeDecorator.new(@person)
  end

  describe '#new' do
    it 'returns a CapitalizeDecorator object' do
      expect(@decorator).to be_an_instance_of CapitalizeDecorator
    end
  end

  describe '#correct_name' do
    it 'returns the correct name' do
      expect(@decorator.correct_name).to eql 'Modulasoblangatas'
    end
  end
end
