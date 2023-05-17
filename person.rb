require_relative('nameable')
require_relative('capitalize_decorator')
require_relative('trimmer_decorator')

# Person is a parrent which holds age, name and parent_permission
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  # Initialize the class instance varibales
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = rand(1..9999)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  # of_age checks the person age is greater than 18 or not
  def of_age?
    return true if @age >= 18

    false
  end

  # can_use_services helps to find person age is over the rectriction age or not also check the parent_permission
  def can_use_services?
    return true if of_age? || @parent_permission

    false
  end

  def correct_name
    @name
  end

  # This method is helps to add a new rental to the person rentals.
  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  # Define the "of_age?" to a private method
  private :of_age?
end

# Check if my code successfully decorates my person object
person = Person.new(22, 'maximilianus')
puts person.correct_name # It will print 'maximilianus'

# Create a CapitalizeDecorator instance and decorate the person object
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name # It will print 'Maximilianus'

# Create a TrimmerDecorator instance and decorate the capitalizedPerson object
capitalized_trimmed_person = TrimmerDecorator.new(capitalizedPerson)
puts capitalized_trimmed_person.correct_name # It will print 'Maximilian'
