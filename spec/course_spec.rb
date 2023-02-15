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
end