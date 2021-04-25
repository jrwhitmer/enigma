require './spec/spec_helper'
require './lib/message'

RSpec.describe do

  context 'instantiation' do
    xit 'exists' do
      message = "Blah di bleh!"
      message = Message.new(message)

      expect(message).to be_instance_of(Message)
    end
  end

  context 'methods' do
    xit 'can assign characters to their shifts' do
      message = "Blah di bleh!"
      message = Message.new(message)

      expect(message.assign_shifts).to eq()
    end
  end

end
