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
end
