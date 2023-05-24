require_relative './helper_spec'

describe Teacher do
  before :each do
    @teacher = Teacher.new 'english', 52, 'Loki', parent_permission: true
  end

  describe '#new' do
    it 'takes four patameters and returns a Teacher object' do
      expect(@teacher).to be_an_instance_of Teacher
    end
  end

  describe '#specialization' do
    it 'returns the correct specialization of the teacher' do
      expect(@teacher.specialization).to eql 'english'
    end
  end

  describe '#age' do
    it 'returns the correct age of the teacher' do
      expect(@teacher.age).to eql 52
    end
  end

  describe '#name' do
    it 'returns the correct name of the teacher' do
      expect(@teacher.name).to eql 'Loki'
    end
  end

  describe '#parent_permission' do
    it 'returns the correct parent_permission of the teacher' do
      expect(@teacher.parent_permission).to eql true
    end
  end

  describe 'can_use_services?' do
    it 'call the can_use_services? method and return true' do
      expect(@teacher.can_use_services?).to eq(true)
    end
  end
end
