require './lib/shift'
require './lib/offset'
require './lib/key'
require 'date'

class Enigma

  def initialize
  end

  def encrypt(message, key, date)
    offset = Offset.new(date)
    shift = Shift.new(key, offset)
    encryption_message = []
    counter = 0
    message.chars.cycle(1) do |character|
      if counter == 0 || counter.remainder(4) == 0
        encryption_message << shift.translate_a_values_to_text(character)
      elsif counter.remainder(4) == 1
        encryption_message << shift.translate_b_values_to_text(character)
      elsif counter.remainder(4) == 2
        encryption_message << shift.translate_c_values_to_text(character)
      elsif counter.remainder(4) == 3
        encryption_message << shift.translate_d_values_to_text(character)
      end
      counter += 1
    end
    date_class = Date.parse(date)
    encryption_text = encryption_message.join
    encrypt_hash = {
      encryption: encryption_text,
      key: key.key,
      date: date_class.strftime("%d%m%y")
    }
  end
end
