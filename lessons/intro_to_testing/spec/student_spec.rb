# Add the 2 requires you will need here
require 'rspec'
require './lib/student'

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new('Penelope')
      expect(student).to be_instance_of(Student)
    end
    # test it has a name
    it 'has a name' do
      student = Student.new('Penelope')
      expect(student.name).to eq('Penelope')
    end
    # test it has cookies
    it 'has cookies' do
      student = Student.new('Penelope')
      expect(student.cookies).to eq([])
    end
    # test it can add cookies
    it 'can add cookies' do
      #setup
      student = Student.new('Penelope')
      #assert
      expect(student.cookies).to eq([])
      #execute
      student.add_cookie('Chocolate Chunk')
      student.add_cookie('Snickerdoodle')
      #assert
      expect(student.cookies).to eq(['Chocolate Chunk', 'Snickerdoodle'])
    end
  end
end