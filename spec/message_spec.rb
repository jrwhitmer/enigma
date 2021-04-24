require './spec/spec_helper'
require './lib/message'

RSpec.describe do

  context 'instantiation' do
    it 'exists' do
      message = Message.new(message)

      expect(message).to be_instance_of(Message)
    end
  end

end
