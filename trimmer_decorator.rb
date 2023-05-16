require_relative 'name_decorator'

# The TrimmerDecorator class trims the output of the @nameable.correct_name method to a maximum of 10 characters.
class TrimmerDecorator < NameDecorator
  def correct_name
    @nameable.correct_name[0...10]
  end
end
