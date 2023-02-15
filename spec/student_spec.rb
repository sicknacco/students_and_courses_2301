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
    expect(@student.scores).to eq([])
  end

  it 'can log scores' do
    @student.log_score(89)
    @student.log_score(78)
    expect(@student.scores).to eq([89, 78])
  end

  it 'can find average of scores' do
    @student.log_score(89)
    @student.log_score(78)
    expect(@student.scores).to eq([89, 78])

    expect(@student.grade).to eq(83.5)
  end
end