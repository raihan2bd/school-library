# Represents a classroom object that holds a label and a collection of students
class Classroom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
    @students = [] # Initialize an empty array to store the students
  end

  def add_student(student)
    @students << student # Add the student to the array of students
    student.classroom = self # Assign the classroom object to the student
  end
end
