require_relative 'nameable'

# The NameDecorator class decorates a Nameable object.
class NameDecorator < Nameable
  def initialize(nameable)
    @nameable = nameable
  end

  # Delegates the correct_name method to the decorated object.
  def correct_name
    @nameable.correct_name
  end
end
