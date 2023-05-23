require_relative 'person'

# The Teacher class represents a teacher who inherits from the Person class.
class Teacher < Person
  attr_accessor :specialization
  def initialize(specialization, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  # The can_use_services? method determines if a teacher can use services.
  def can_use_services?
    true
  end
end

# create an instance of the Teacher class using random values
teacher1 = Teacher.new('Mathematics', 35, 'Mr. Smith')

# Accessing attributes of the teacher1 instance
puts teacher1.age # 35
puts teacher1.name # Mr. Smith
puts teacher1.can_use_services? # true
