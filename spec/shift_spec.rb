require './lib/shift'
require './lib/key'
require './lib/offset'
require 'rspec'

RSpec.describe Shift do

  context 'instantiation' do
    it 'exists' do
      key = Key.new
      offset = Offset.new("05-16-1998")
      shift = Shift.new(key, offset)

      expect(shift).to be_instance_of(Shift)
    end
  end

end
