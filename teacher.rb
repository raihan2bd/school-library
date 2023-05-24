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
