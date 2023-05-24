require_relative './helper_spec'

describe Person do
  before :each do
    @person = Person.new 25, 'Raihan', parent_permission: true
  end

  describe '#new' do
    it 'takes four patameters and returns a Person object' do
      expect(@person).to be_an_instance_of Person
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      expect(@person.age).to eql 25
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      expect(@person.name).to eql 'Raihan'
    end
  end

  describe '#parent_permission' do
    it 'returns the correct parent_permission ' do
      expect(@person.parent_permission).to eql true
    end
  end

  describe 'Assign new person to book' do
    it 'accepts new person' do
      new_book = Book.new('Clean Code', 'Robert C. Martin')
      @person.add_rental(new_book, '10/8/2020')
      expect(@person.rentals[0].book.title).to eq('Clean Code')
    end
  end
end
