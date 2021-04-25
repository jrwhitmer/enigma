class Message

  def initialize(message)
    @message = message
  end

  def assign_shifts
    @message.chars.each_with_object({}) do |character, hash|
      hash[:a_shift]
    end
  end

end
