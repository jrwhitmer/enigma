require './lib/key_generator'
require './lib/key'
require 'rspec'

RSpec.describe Key do

   it 'Key Generator exists within Key class' do
     expect(Key.ancestors).to include(KeyGenerator)
   end


end
