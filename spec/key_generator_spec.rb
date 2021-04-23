require './lib/key_generator'
require './lib/key'
require 'rspec'

RSpec.describe Key do

   it 'Key Generator exists within Key class' do
     expect(Key.ancestors).to include(KeyGenerator)
   end

   it 'can generate an integer key' do
     key = Key.new

     expect(key.generate_key.class).to eq(Integer)
   end


end
