require './lib/key'
require 'rspec'

RSpec.describe Key do

  context 'instantiation' do

    it 'exists' do
      key = Key.new(04729)

      expect(key).to be_instance_of(Key)
    end

  end


end
