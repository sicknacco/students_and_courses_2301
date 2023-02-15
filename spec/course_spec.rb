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
end