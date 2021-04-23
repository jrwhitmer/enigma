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

    it 'has attributes' do
      allow_any_instance_of(Key).to receive(:rand).and_return(4837)
      key = Key.new
      offset = Offset.new("05-16-1998")
      shift = Shift.new(key, offset)

      expect(shift.a_shift).to eq(6)
      expect(shift.b_shift).to eq(48)
      expect(shift.c_shift).to eq(83)
      expect(shift.d_shift).to eq(41)
    end
  end

  context 'methods' do
    allow_any_instance_of(Key).to receive(:rand).and_return(4837)
    key = Key.new
    offset = Offset.new("05-16-1998")
    shift = Shift.new(key, offset)
    text = "This is test text"

    it 'can shift text by a_shift amount' do
      expect(shift.shift_by_a(text).to eq()
    end
  end

end
