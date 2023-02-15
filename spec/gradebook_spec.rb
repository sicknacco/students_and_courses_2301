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




end