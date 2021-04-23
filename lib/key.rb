require './lib/key_generator'

class Key

include KeyGenerator

  attr_reader :key

  def initialize
    @key = generate_key
  end

  def a_key
    @key[0,2].to_i
  end

  def b_key
    @key[1,2].to_i
  end

  def c_key
    @key[2,2].to_i
  end

  def d_key
    @key[3,4].to_i
  end
end
