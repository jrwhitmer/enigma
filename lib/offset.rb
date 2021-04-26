class Offset

  def initialize(date)
    @offset = generate_offset(date)
  end

  def generate_offset(date)
    squared_date = date.delete("-").to_i**2
    offset_string = squared_date.to_s[-4..-1]
    offset = offset_string.to_i
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
