require './lib/offset'
require 'rspec'

RSpec.describe Offset do

  context 'instantiation' do

    it 'exists' do
      offset = Offset.new

      expect(offset).to be_instance_of(Offset)
    end
  end
end
