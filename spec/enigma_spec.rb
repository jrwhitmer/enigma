require './spec/spec_helper'
require './lib/enigma'
require './lib/key'

RSpec.describe Enigma do
  context 'instantiation' do
    it 'exists' do
      message = "Blah di bleh!"
      key = Key.new
      date = "16-05-2003"
      enigma = Enigma.new(message, key, date)

      expect(enigma).to be_instance_of(Enigma)
    end
  end

  context 'methods' do
    it 'can encrypt text' do
      allow_any_instance_of(Key).to receive(:rand).and_return(4837)
      message = "Blah di bleh!"
      key = Key.new
      date = "16-05-1998"
      enigma = Enigma.new(message, key, date)

      expect(enigma.encrypt).to eq("hfcvfyknhfgv!")
    end

  end
end
