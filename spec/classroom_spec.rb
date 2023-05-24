require_relative './helper_spec'

describe Classroom do
  before :each do
    @classroom = Classroom.new 'Class 1'
  end

  describe '#new' do
    it 'should create a classroom' do
      expect(@classroom).to be_an_instance_of Classroom
    end
  end

  describe '#label' do
    it 'should return the correct label of the classroom' do
      expect(@classroom.label).to eql 'Class 1'
    end
  end

  describe 'assign a student to a classroom' do
    it 'accepts a new student' do
      student = Student.new 'Class 12', 18, 'Lorem', parent_permission: true
      @classroom.add_student student
      expect(@classroom.students.first.name).to eql 'Lorem'
    end
  end
end
