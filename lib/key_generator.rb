module KeyGenerator

  def generate_key
    rand(10000).to_s.rjust(5, "0")
  end


end
