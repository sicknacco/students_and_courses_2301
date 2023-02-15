require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end

  it 'exists' do
    expect(@student).to be_instance_of(Student)
  end

  it 'has information' do
    expect(@student.name).to eq("Morgan")
    expect(@student.age).to eq(21)
  end
end