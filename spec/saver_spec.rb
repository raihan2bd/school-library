require_relative './helper_spec'
require 'json'

describe DataSaver do
  describe '.save_people' do
    it 'writes people data to a JSON file' do
      people = [
        double('Person', class: Teacher, age: 30, name: 'John', specialization: nil, parent_permission: true, id: 1),
        double('Person', class: Student, age: 20, name: 'Mike', parent_permission: true, id: 2)
      ]

      allow(File).to receive(:write)

      expected_output = JSON.generate([
                                        { class: 'Teacher', age: 30, name: 'John', specialization: nil,
                                          parent_permission: true, index: 0, id: 1 },
                                        { class: 'Student', age: 20, name: 'Mike', specialization: nil,
                                          parent_permission: true, index: 1, id: 2 }
                                      ])

      DataSaver.save_people(people)

      expect(File).to have_received(:write).with('./people.json', expected_output)
    end
  end

  describe '.save_books' do
    it 'writes books data to a JSON file' do
      books = [
        double('Book', title: 'The Lord of the Rings', author: 'J.R.R. Tolkien'),
        double('Book', title: 'The Hobbit', author: 'J.R.R. Tolkien')
      ]

      allow(File).to receive(:write)

      expected_output = JSON.generate([
                                        { title: 'The Lord of the Rings', author: 'J.R.R. Tolkien', index: 0 },
                                        { title: 'The Hobbit', author: 'J.R.R. Tolkien', index: 1 }
                                      ])

      DataSaver.save_books(books)

      expect(File).to have_received(:write).with('./books.json', expected_output)
    end
  end

  describe '.save_rentals' do
    it 'writes rentals data to a JSON file' do
      rentals = [
        double('Rental', book: double('Book', title: 'The Lord of the Rings'), person: double('Person', id: 1),
                         date: '2021-01-01'),
        double('Rental', book: double('Book', title: 'The Hobbit'), person: double('Person', id: 2),
                         date: '2021-01-01')
      ]
      allow(File).to receive(:write)

      expected_output = JSON.generate([
                                        { book_title: 'The Lord of the Rings', person_id: 1, date: '2021-01-01',
                                          index: 0 },
                                        { book_title: 'The Hobbit', person_id: 2, date: '2021-01-01', index: 1 }
                                      ])

      DataSaver.save_rentals(rentals)

      expect(File).to have_received(:write).with('./rentals.json', expected_output)
    end
  end
end
