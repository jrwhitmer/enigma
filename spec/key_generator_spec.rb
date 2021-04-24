require './spec/spec_helper'
require './lib/key_generator'
require './lib/key'


RSpec.describe Key do

   it 'Key Generator exists within Key class' do
     expect(Key.ancestors).to include(KeyGenerator)
   end

   it 'can generate a key string' do
     key = Key.new

     expect(key.generate_key.class).to eq(String)
   end

   it 'can return a key with padded/leading zeros' do
     key = Key.new
     allow(key).to receive(:rand).and_return(6421)

     expect(key.generate_key).to eq("06421")
   end

   it 'can convert key into an integer' do
     key = Key.new

     expect(key.converted_key.class).to eq(Integer)
   end

end
