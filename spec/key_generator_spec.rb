require './lib/key_generator'
require './lib/key'
require 'rspec'

RSpec.describe Key do

   context 'Key Generator exists within Key class' do
     key = Key.new

     expect(key < KeyGenerator).to eq(true)
   end


end
