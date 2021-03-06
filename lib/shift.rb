class Shift

  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def a_shift
    @key.a_key + @offset.offset_a
  end

  def b_shift
    @key.b_key + @offset.offset_b
  end

  def c_shift
    @key.c_key + @offset.offset_c
  end

  def d_shift
    @key.d_key + @offset.offset_d
  end

  def character_set
    character_set = {"a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6, "g" => 7, "h" => 8, "i" => 9, "j" => 10, "k" => 11, "l" => 12, "m" => 13, "n" => 14, "o" => 15, "p" => 16, "q" => 17, "r" => 18, "s" => 19, "t" => 20, "u" => 21, "v" => 22, "w" => 23, "x" => 24, "y" => 25, "z" => 26, " " => 27}
  end

  def value_set
    value_set = {1 => "a", 2 => "b", 3 => "c", 4 => "d", 5 => "e", 6 => "f", 7 => "g", 8  => "h", 9 => "i", 10 => "j", 11 => "k", 12 => "l", 13 => "m", 14 => "n", 15 => "o", 16 => "p", 17 => "q", 18 => "r", 19 => "s", 20 => "t", 21 => "u", 22  => "v", 23 => "w", 24 => "x", 25 => "y", 26 => "z", 27 => " ", 0 => " ", -1 => "z", -2 => "y", -3 => "x", -4 => "w", -5 => "v", -6 => "u", -7 => "t", -8 => "s", -9 => "r", -10 => "q", -11 => "p", -12 => "o", -13 => "n", -14 => "m", -15 => "l", -16 => "k", -17 => "j", -18 => "i", -19 => "h", -20 => "g", -21 => "f", -22 => "e", -23 => "d", -24 => "c", -25 => "b", -26 => "a"}
  end

  def matching_character?(character)
    !character_set[character].nil?
  end

  def matching_value?(value)
    !value_set[value].nil?
  end

  def translate_text_to_values(text)
    text.chars.map do |character|
      if matching_character?(character.downcase)
        character_set[character.downcase]
      else
        character
      end
     end
  end

  def shift_by_a(text)
    translate_text_to_values(text).map do |character_value|
      if matching_value?(character_value)
        (character_value + a_shift.remainder(27)).remainder(27)
      else
        character_value
      end
    end
  end


  def translate_a_values_to_text(text)
    shift_by_a(text).map do |character_value|
      if matching_value?(character_value)
        value_set[character_value]
      else
        character_value
      end
    end.join
  end

  def unshift_by_a(text)
    translate_text_to_values(text).map do |character_value|
      if matching_value?(character_value)
        (character_value - a_shift.remainder(27)).remainder(27)
      else
        character_value
      end
    end
  end

  def translate_unshifted_a_values_to_text(text)
    unshift_by_a(text).map do |character_value|
      if matching_value?(character_value)
        value_set[character_value]
      else
        character_value
      end
    end.join
  end

  def shift_by_b(text)
    translate_text_to_values(text).map do |character_value|
      if matching_value?(character_value)
        (character_value + b_shift.remainder(27)).remainder(27)
      else
        character_value
      end
    end
  end

  def translate_b_values_to_text(text)
    shift_by_b(text).map do |character_value|
      if matching_value?(character_value)
        value_set[character_value]
      else
        character_value
      end
    end.join
  end

  def unshift_by_b(text)
    translate_text_to_values(text).map do |character_value|
      if matching_value?(character_value)
        (character_value - b_shift.remainder(27)).remainder(27)
      else
        character_value
      end
    end
  end

  def translate_unshifted_b_values_to_text(text)
    unshift_by_b(text).map do |character_value|
      if matching_value?(character_value)
        value_set[character_value]
      else
        character_value
      end
    end.join
  end

  def shift_by_c(text)
    translate_text_to_values(text).map do |character_value|
      if matching_value?(character_value)
        (character_value + c_shift.remainder(27)).remainder(27)
      else
        character_value
      end
    end
  end

  def translate_c_values_to_text(text)
    shift_by_c(text).map do |character_value|
      if matching_value?(character_value)
        value_set[character_value]
      else
        character_value
      end
    end.join
  end

  def unshift_by_c(text)
    translate_text_to_values(text).map do |character_value|
      if matching_value?(character_value)
        (character_value - c_shift.remainder(27)).remainder(27)
      else
        character_value
      end
    end
  end

  def translate_unshifted_c_values_to_text(text)
    unshift_by_c(text).map do |character_value|
      if matching_value?(character_value)
        value_set[character_value]
      else
        character_value
      end
    end.join
  end

  def shift_by_d(text)
    translate_text_to_values(text).map do |character_value|
      if matching_value?(character_value)
        new_value = (character_value + d_shift.remainder(27)).remainder(27)
      else
        character_value
      end
    end
  end

  def translate_d_values_to_text(text)
   shift_by_d(text).map do |character_value|
     if matching_value?(character_value)
       value_set[character_value]
     else
       character_value
     end
    end.join
  end

  def unshift_by_d(text)
    translate_text_to_values(text).map do |character_value|
      if matching_value?(character_value)
        (character_value - d_shift.remainder(27)).remainder(27)
      else
        character_value
      end
    end
  end

  def translate_unshifted_d_values_to_text(text)
    unshift_by_d(text).map do |character_value|
      if matching_value?(character_value)
        value_set[character_value]
      else
        character_value
      end
    end.join
  end

end
