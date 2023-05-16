require_relative 'name_decorator'

# The CapitalizeDecorator class decorates a Nameable object by capitalizing the output of the correct_name method.
class CapitalizeDecorator < NameDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
