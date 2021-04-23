require './lib/key'
require 'rspec'

RSpec.describe Key do

  context 'instantiation' do
    key = Key.new

    it 'exists' do
      expect(key).to be_instance_of(Key)
    end

    it 'has attributes' do
      allow(key).to receive(:rand).and_return(4837)

      expect(key.a_key).to eq(4)
      expect(key.b_key).to eq(48)
      expect(key.c_key).to eq(83)
      expect(key.d_key).to eq(37)
    end

  end

  context 'methods' do


  end


end
