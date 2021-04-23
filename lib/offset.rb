require 'date'
require './lib/offset_generator'

class Offset

  include OffsetGenerator

  def initialize(date)
    @offset = generate_offset(date)
  end


end
