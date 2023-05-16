require_relative('nameable')

# Person is a parrent which holds age, name and parent_permission
class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  # Initialize the class instance varibales
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = rand(1..9999)
    @name = name
    @age = age
    @parent_permission = parent_permission
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

  # Define the "of_age?" to a private method
  private :of_age?
end

# create a instense from the Person class using random value
person1 = Person.new(18, 'Jhon')
p person1.can_use_services? # it will print true
