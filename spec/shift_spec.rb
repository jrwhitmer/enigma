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
      expect(shift.character_set).to eq( {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26, " " => 27})
    end
  end

  context 'methods' do
    it 'can translate text into an array of values associated with our character set' do
      allow_any_instance_of(Key).to receive(:rand).and_return(4837)
      key = Key.new
      offset = Offset.new("05-16-1998")
      shift = Shift.new(key, offset)
      text = "This is test text"

      expect(shift.translate_text_to_values(text)).to eq([20, 8, 9, 19, 27, 9, 19, 27, 20, 5, 19, 20, 27, 20, 5, 24, 20])
    end

    it 'can shift text by a_shift amount(integer array)' do
      allow_any_instance_of(Key).to receive(:rand).and_return(4837)
      key = Key.new
      offset = Offset.new("05-16-1998")
      shift = Shift.new(key, offset)
      text = "This is test text"

      expect(shift.shift_by_a(text)).to eq([26, 14, 15, 25, 33, 15, 25, 33, 26, 11, 25, 26, 33, 26, 11, 30, 26])
    end

    it 'can translate text shifted by a_shift amount' do
      allow_any_instance_of(Key).to receive(:rand).and_return(4837)
      key = Key.new
      offset = Offset.new("05-16-1998")
      shift = Shift.new(key, offset)
      text = "This is test text"

      expect(shift.translate_a_values_to_text).to eq("")
    end
  end

end
