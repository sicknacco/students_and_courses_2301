require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new('Jimmy')
  end

  describe 'Object' do
   it 'exists' do
    expect(@gradebook).to be_instance_of(Gradebook)
    end

    it 'has an instructor' do
      expect(@gradebook.instructor).to eq('Jimmy')
    end

    it 'starts with no courses' do
      expect(@gradebook.courses).to eq([])
    end
  end

  describe 'Integrating with courses students' do
    before(:each) do
      @course = Course.new("Calculus", 2)
      @student = Student.new({name: "Morgan", age: 21})
    end

    it 'can add a new course' do
      @gradebook.add_course("Calculus")
      expect(@gradebook.courses).to eq(["Calculus"])
    end

    it 'can list all students' do
      expect(@gradebook.list_all_students).to eq(["Morgan"])
    end
  end




end