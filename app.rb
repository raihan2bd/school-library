require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

# App class for managing the school library application
class App
  def initialize
    @people = []
    @books = []
    @rentals = []
    @classroom = Classroom.new('Grade 10')
  end

  # Lists all books in the library
  def list_all_books
    if @books.empty?
      puts 'Oops! the library is empty, please add books'
      return
    end
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  # Lists all registered people (students and teachers)
  def list_all_people
    if @people.empty?
      puts 'Oops! no people registered, please add people'
    else
      @people.each do |person|
        puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end

  # Creates a person (student or teacher) based on user input
  def create_person
    # Prompt the user to choose between creating a student or a teacher
    puts 'Do you want to create a student (1) or a teacher(2)?....'
    option = gets.chomp

    # Prompt the user to get user name and age
    print 'Name:'
    name = gets.chomp
    print 'Age:'
    age = gets.chomp.to_i

    case option
    when '1'
      print 'Has Parent permission? [Y/N]:'
      parent_permission = gets.chomp.downcase

      # Create a new student object with the provided information
      student = Student.new(@classroom, age, name, parent_permission: parent_permission)
      @people << student
      puts 'Student created successfully'
    when '2'
      print 'Specialization:'
      specialization = gets.chomp

      # Create a new teacher object with the provided information
      @people << Teacher.new(specialization, age, name)
      puts 'Teacher created successfully'
    else
      puts 'Invalid input! Please type 1 or 2'
    end
  end

  # Creates a book based on user input
  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books << Book.new(title, author)

    puts 'Book created successfully'
  end

  # Creates a rental based on user input
  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: #{book.title}, Author: #{book.author}"
    end

    book_id = gets.chomp.to_i

    puts 'Select a person from the following list by number (not ID)'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end

    person_id = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp

    @rentals << Rental.new(date, @people[person_id], @books[book_id])
    puts 'Rental created successfully'
  end

  # Lists rentals for a given person ID
  def list_rentals
    print 'ID of person: '
    id = gets.chomp.to_i

    rentals = @rentals.filter { |rental| rental.person.id == id }

    puts 'Rentals:'
    rentals.each do |rental|
      puts "Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}"
    end
  end
end
