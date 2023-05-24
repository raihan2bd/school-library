require_relative './helper_spec'

describe Book do
  before :each do
    @book = Book.new 'Clean Code', 'Robert C. Martin'
  end

  describe '#new' do
    it 'takes two patameters and returns a Book object' do
      expect(@book).to be_an_instance_of Book
    end
  end

  describe '#title' do
    it 'returns the correct title of the book' do
      expect(@book.title).to eql 'Clean Code'
    end
  end

  describe '#author' do
    it 'returns the correct author of the book' do
      expect(@book.author).to eql 'Robert C. Martin'
    end
  end

  describe 'Assign new person to book' do
    it 'accepts new person' do
      new_person = Person.new(25, 'Raihan', parent_permission: true)
      @book.add_rental(new_person, '24/5/2023')
      expect(@book.rentals[0].person.name).to eq('Raihan')
    end
  end
end
