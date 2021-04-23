require 'date'

module OffsetGenerator

  def generate_offset(date)
    squared_date = date.delete("-").to_i**2
    offset_string = squared_date.to_s[-4..-1]
    offset = offset_string.to_i
  end

end
