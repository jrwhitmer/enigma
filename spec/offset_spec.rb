require './spec/spec_helper'
require './lib/offset'


RSpec.describe Offset do

  context 'instantiation' do

    it 'exists' do
      date = "16-05-2003"
      offset = Offset.new(date)

      expect(offset).to be_instance_of(Offset)
    end

    it 'has attributes' do
      date = "16-05-2003"
      offset = Offset.new(date)

      expect(offset.offset_a).to eq(2)
      expect(offset.offset_b).to eq(0)
      expect(offset.offset_c).to eq(0)
      expect(offset.offset_d).to eq(9)
    end
  end
end
