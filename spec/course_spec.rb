require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2)
  end

  it 'exists' do
    expect(@course).to be_instance_of(Course)
  end

  it 'has a course name and capacity' do

    expect(@course.name).to eq("Calculus")
    expect(@course.capacity).to eq(2)
  end

  it 'starts with no students' do
    expect(@course.students).to eq([])
    expect(@course.full?).to eq(false)
  end

  it 'can enroll students' do
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})

    @course.enroll(student1)
    @course.enroll(student2)

    expect(@course.students).to eq([student1, student2])
    expect(@course.full?).to eq(true)
  end
end