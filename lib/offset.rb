require './lib/offset_generator'

class Offset

  include OffsetGenerator

  def initialize(date)
    @offset = generate_offset(date)
  end

  def offset_a
    @offset.to_s[0].to_i
  end

  def offset_b
    @offset.to_s[1].to_i
  end

  def offset_c
    @offset.to_s[2].to_i
  end

  def offset_d
    @offset.to_s[3].to_i
  end
end
