require './spec/spec_helper'
require './lib/key'


RSpec.describe Key do

  context 'instantiation' do


    it 'exists' do
      key = Key.new
      expect(key).to be_instance_of(Key)
    end

    it 'has attributes' do
      allow_any_instance_of(Key).to receive(:rand).and_return(4837)
      key = Key.new

      expect(key.a_key).to eq(4)
      expect(key.b_key).to eq(48)
      expect(key.c_key).to eq(83)
      expect(key.d_key).to eq(37)
    end

  end

  context 'methods' do


  end


end
