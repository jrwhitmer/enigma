require './spec/spec_helper'
require './lib/message'

RSpec.describe do

  context 'instantiation' do
    it 'exists' do
      message = "Blah di bleh!"
      message = Message.new(message)

      expect(message).to be_instance_of(Message)
    end
  end

  context 'methods' do
    it 'can assign characters to their shifts' do
      message = "Blah di bleh!"
      message = Message.new(message)

      expect(message.assign_shifts).to eq({a_shift: "B b!", b_shift: "ldl", c_shift: "aie", d_shift: "h h"})
    end
  end

end
