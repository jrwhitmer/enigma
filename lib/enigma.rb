require './lib/shift'
require './lib/offset'
require './lib/key'
require 'date'

class Enigma

  def set_shift(message, key, date)
    offset = Offset.new(date)
    @shift = Shift.new(key, offset)
  end

  def a_shift?(counter)
    counter == 0 || counter.remainder(4) == 0
  end

  def b_shift?(counter)
    counter.remainder(4) == 1
  end

  def c_shift?(counter)
    counter.remainder(4) == 2
  end

  def d_shift?(counter)
    counter.remainder(4) == 3
  end

  def shift_char_by_a(character)
    @encryption_message << @shift.translate_a_values_to_text(character)
  end

  def shift_char_by_b(character)
    @encryption_message << @shift.translate_b_values_to_text(character)
  end

  def shift_char_by_c(character)
    @encryption_message << @shift.translate_c_values_to_text(character)
  end

  def shift_char_by_d(character)
    @encryption_message << @shift.translate_d_values_to_text(character)
  end

  def convert_date(date)
    date_class = Date.parse(date)
    date_class.strftime("%d%m%y")
  end

  def shift_message(message, key, date)
    counter = 0
    message.chars.cycle(1) do |character|
      if a_shift?(counter)
        shift_char_by_a(character)
      elsif b_shift?(counter)
        shift_char_by_b(character)
      elsif c_shift?(counter)
        shift_char_by_c(character)
      elsif d_shift?(counter)
        shift_char_by_d(character)
      end
      counter += 1
    end
  end

  def encrypt(message, key, date = Date.today.strftime("%d-%m-%Y"))
    set_shift(message, key, date)
    @encryption_message = []
    shift_message(message, key, date)
    encryption_text = @encryption_message.join
    encrypt_hash = {
      encryption: encryption_text,
      key: key.key,
      date: convert_date(date)
      }
  end
end
