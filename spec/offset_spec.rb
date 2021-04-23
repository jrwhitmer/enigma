require './lib/offset'
require 'rspec'

RSpec.describe Offset do

  context 'instantiation' do

    it 'exists' do
      offset = Offset.new

      expect(offset).to be_instance_of(Offset)
    end

    it 'has attributes' do
      offset = Offset.new

      expect(offset.offset_a).to eq()
      expect(offset.offset_b).to eq()
      expect(offset.offset_c).to eq()
      expect(offset.offset_d).to eq()
    end
  end
end
