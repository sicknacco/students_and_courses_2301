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

    
  end




end