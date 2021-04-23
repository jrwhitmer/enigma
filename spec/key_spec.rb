require './lib/key'
require 'rspec'

RSpec.describe Key do

  context 'instantiation' do

    it 'exists' do
      key = Key.new(04726)

      expect(key).to be_instance_of(Key)
    end

    it 'has attributes' do
      key = Key.new(04726)

      expect(key.a_key).to eq(04)
      expect(key.b_key).to eq(47)
      expect(key.c_key).to eq(72)
      expect(key.d_key).to eq(26)
    end

  end


end
