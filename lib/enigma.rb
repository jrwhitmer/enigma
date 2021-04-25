require './lib/shift'
require './lib/offset'
require './lib/key'

class Enigma

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @offset = Offset.new(date)
    @shift = Shift.new(@key, @offset)
  end

  def encrypt
  a = @message.chars.map do |character|
      character_indexes = @message.chars.each_index.select do |index|
        @message.chars[index] == character
      end
      counter = -1
      array_of_shifted_characters_at_index = character_indexes.map do |index|
        counter +=1
        if index == 0 || index.remainder(4) == 0
          @shift.translate_a_values_to_text(character)
        elsif index.remainder(4) == 1
          @shift.translate_b_values_to_text(character)
        elsif index.remainder(4) == 2
          @shift.translate_c_values_to_text(character)
        elsif index.remainder(4) == 3
          @shift.translate_d_values_to_text(character)
        end
      end
      new_character_array = [array_of_shifted_characters_at_index[counter]]
    end.join
  end

end
