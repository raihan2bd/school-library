# The Nameable class serves as a base class
# for objects that are expected to have a "correct_name" method.
class Nameable
  # The correct_name method is defined as a placeholder
  # and raises a NotImplementedError when called.
  def correct_name
    raise NotImplementedError, 'Correct Name'
  end
end
