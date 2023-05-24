require_relative './helper_spec'

describe Student do
  before :each do
    @student = Student.new 'Class 12', 18, 'Lorem', parent_permission: true
  end

  describe '#new' do
    it 'takes four patameters and returns a Student object' do
      expect(@student).to be_an_instance_of Student
    end
  end

  describe '#classroom' do
    it 'returns the correct classromm of the student' do
      expect(@student.classroom).to eql 'Class 12'
    end
  end

  describe '#age' do
    it 'returns the correct age of the student' do
      expect(@student.age).to eql 18
    end
  end

  describe '#name' do
    it 'returns the correct name of the student' do
      expect(@student.name).to eql 'Lorem'
    end
  end

  describe '#parent_permission' do
    it 'returns the correct parent_permission of the student' do
      expect(@student.parent_permission).to eql true
    end
  end

  describe 'play_hooky' do
    it 'call the play_hooky method and return string' do
      expect(@student.play_hooky).to eq('¯\(ツ)/¯')
    end
  end
end
