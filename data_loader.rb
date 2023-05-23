require 'json'
require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

class DataLoader
  def self.read_people
    return [] unless File.exist?('people.json')

    file = File.open('people.json')
    new_people = File.read(file)
    json_people = JSON.parse(new_people)
    load_people = []
    json_people.each do |person|
      case person['class']
      when 'Teacher'
        new_teacher = Teacher.new(person['specialization'], person['age'], person['name'])
        new_teacher.id = person['id']
        load_people << new_teacher
      when 'Student'
        new_student = Student.new(@classroom, person['age'], person['name'],
                                  parent_permission: person['parent_permission'])
        new_student.id = person['id']
        load_people << new_student
      end
    end
    file.close
    load_people
  end

  # load data from books json file
  def self.read_books
    return [] unless File.exist?('books.json')

    file = File.open('books.json')
    new_books = File.read(file)
    json_books = JSON.parse(new_books)
    load_books = []
    json_books.each do |book|
      new_book = Book.new(book['title'], book['author'])
      load_books << new_book
    end
    file.close
    load_books
  end

  def self.read_rentals(people, books)
    return [] unless File.exist?('rentals.json')

    file = File.open('rentals.json')
    new_rentals = File.read(file)
    json_rentals = JSON.parse(new_rentals)
    load_rentals = []
    json_rentals.each do |rental|
      rental_person = people.select { |person| person.id == rental['person_id'] }
      rental_book = books.select { |book| book.title == rental['book_title'] }
      new_rental = Rental.new(rental['date'], rental_person[0], rental_book[0])
      load_rentals << new_rental
    end
    file.close
    load_rentals
  end
end
