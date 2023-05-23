require 'json'
require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

class DataSaver
  # save data into files
  def self.save_people(people)
    new_people = people.each_with_index.map do |person, index|
      { class: person.class, age: person.age, name: person.name,
        specialization: (person.specialization if person.instance_of?(Teacher)),
        parent_permission: person.parent_permission,
        index: index, id: person.id }
    end
    json_people = JSON.generate(new_people)
    File.write('./people.json', json_people)
  end

  def self.save_books(books)
    new_book = books.each_with_index.map do |book, index|
      { title: book.title, author: book.author, index: index }
    end
    json_book = JSON.generate(new_book)
    File.write('./books.json', json_book)
  end

  def self.save_rentals(rentals)
    new_rental = rentals.each_with_index.map do |rental, index|
      { book_title: rental.book.title, person_id: rental.person.id, date: rental.date, index: index }
    end
    json_rental = JSON.generate(new_rental)
    File.write('./rentals.json', json_rental)
  end
end
