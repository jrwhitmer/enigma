require './spec/spec_helper'
require './lib/enigma'
require './lib/key'

RSpec.describe Enigma do
  context 'instantiation' do
    it 'exists' do
      enigma = Enigma.new

      expect(enigma).to be_instance_of(Enigma)
    end
  end

  context 'methods' do
    it 'can encrypt text' do
      allow_any_instance_of(Key).to receive(:rand).and_return(4837)
      message = "Blah di bleh!"
      key = Key.new
      date = "16-05-1998"
      enigma = Enigma.new

      expect(enigma.encrypt(message, key, date)).to eq({encryption: "hfcvfyknhfgv!", key: "04837", date: "160598"})
    end

    it 'can encrypt a message using todays date as default' do
      message = "Blah di bleh!"
      allow_any_instance_of(Key).to receive(:rand).and_return(4837)
      key = Key.new
      enigma = Enigma.new

      expect(enigma.encrypt(message, key)).to eq({encryption: "jjgshbokjjks!", key: "04837", date: "260421"})
    end

    it 'can encrypt a message with a default random key' do
      message = "Blah di bleh!"
      allow_any_instance_of(Key).to receive(:rand).and_return(4867)
      enigma = Enigma.new

      expect(enigma.encrypt(message)).to eq({encryption: "jjjvhbrnjjnv!", key: "04867", date: "260421"})
    end

    it 'can decrypt text' do
      enigma = Enigma.new
      allow_any_instance_of(Key).to receive(:rand).and_return(4837)
      message = "Blah di bleh!"
      key = Key.new
      date = "16-05-1998"
    
      expect(enigma.decrypt("hfcvfyknhfgv!", key, date)).to eq({
        decryption: "blah di bleh!",
        key: "04837",
        date: "160598"
        })
    end
  end
end
