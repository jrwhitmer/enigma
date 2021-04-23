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
    value_set = {1 => "a", 2 => "b", 3 => "c", 4 => "d", 5 => "e", 6 => "f", 7 => "g", 8  => "h", 9 => "i", 10 => "j", 11 => "k", 12 => "l", 13 => "m", 14 => "n", 15 => "o", 16 => "p", 17 => "q", 18 => "r", 19 => "s", 20 => "t", 21 => "u", 22  => "v", 23 => "w", 24 => "x", 25 => "y", 26 => "z", 27 => " "}
  end

  def translate_text_to_values(text)
    text.chars.map do |character|
      character_set[character.downcase]
     end
  end

  def shift_by_a(text)
    translate_text_to_values(text).map do |character_value|
      (character_value + a_shift.remainder(27)).remainder(27)
    end
  end

  def translate_a_values_to_text(text)
    translated = shift_by_a(text).map do |character_value|
      value_set[character_value]
    end.join
  end

end
