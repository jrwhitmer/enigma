class Key

  def initialize(key)
    @key = key
  end

  def a_key
    key_string = @key.to_s(8).rjust(5, "0")
    require "pry"; binding.pry
  end

  def b_key

  end

  def c_key

  end

  def d_key

  end
end
