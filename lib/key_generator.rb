module KeyGenerator

  def generate_key
    rand(10001).to_s.rjust(5, "0")
  end

  def converted_key
    generate_key.to_i
  end
end
