require_relative './helper_spec'

describe Rental do
  before :each do
    @person = Person.new 25, 'Raihan', parent_permission: true
    @book = Book.new 'Clean Code', 'Robert C. Martin'
    @rental = Rental.new '21/3/2021', @person, @book
  end

  describe '#new' do
    it 'takes three patameters and returns a Rental object' do
      expect(@rental).to be_an_instance_of Rental
    end
  end

  describe '#date' do
    it 'returns the correct date of the rental' do
      expect(@rental.date).to eql '21/3/2021'
    end
  end

  describe '#person' do
    it 'returns the correct person of the rental' do
      expect(@rental.person.name).to eql 'Raihan'
    end
  end

  describe '#book' do
    it 'returns the correct book of the rental' do
      expect(@rental.book.title).to eql 'Clean Code'
    end
  end
end
