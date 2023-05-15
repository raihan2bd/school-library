require_relative 'person'

# The Student class represents a student who inherits from the Person class.
class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  # The play_hooky method returns a string representation of a student playing hooky.
  def play_hooky
    '¯\(ツ)/¯'
  end
end

# create a instense from the Studen class using random value
student1 = Student.new('myclass', 25, 'Jhon')
puts student1.play_hooky # will print '¯\(ツ)/¯'
p student1
