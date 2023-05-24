require_relative './helper_spec'
require 'json'

describe DataLoader do
  describe '#read_people' do
    it 'reads people data from a JSON file' do
      json_file = File.read('./people.json')
      json_people = JSON.parse(json_file)
      people = DataLoader.read_people
      expect(people.length).to eq(json_people.length)
    end
  end

  describe '#read_books' do
    it 'reads books data from a JSON file' do
      json_file = File.read('./books.json')
      json_books = JSON.parse(json_file)
      books = DataLoader.read_books
      expect(books.length).to eq(json_books.length)
    end
  end

  describe '#read_rentals' do
    it 'reads rentals data from a JSON file' do
      json_file = File.read('./rentals.json')
      json_rentals = JSON.parse(json_file)
      people = DataLoader.read_people
      books = DataLoader.read_books
      rentals = DataLoader.read_rentals(people, books)
      expect(rentals.length).to eq(json_rentals.length)
    end
  end
end
