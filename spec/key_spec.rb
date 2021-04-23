require './lib/key'
require 'rspec'

RSpec.describe Key do

  context 'instantiation' do

    it 'exists' do
      key = Key.new

      expect(key).to be_instance_of(Key)
    end

    xit 'has attributes' do
      key = Key.new

      expect(key.a_key).to eq
      expect(key.b_key).to eq
      expect(key.c_key).to eq
      expect(key.d_key).to eq
    end

  end

  context 'methods' do


  end


end
