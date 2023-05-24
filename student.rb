require_relative 'person'

# The Student class represents a student who inherits from the Person class.
class Student < Person
  attr_accessor :classroom # Getter and Setter method for the classroom

  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom # Set the classroom for the student
  end

  # The play_hooky method returns a string representation of a student playing hooky.
  def play_hooky
    '¯\(ツ)/¯'
  end
end
