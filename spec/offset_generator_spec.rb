require './lib/offset'
require './lib/offset_generator'
require 'rspec'

RSpec.describe Offset do

  it 'Offset Generator exists within Offset class' do
    expect(Offset.ancestors).to include(OffsetGenerator)
  end

  it 'can generate an offset from a date' do
    offset = Offset.new
    date = "2000-05-16"
    expect(offset.generate_offset(date).class).to eq(Integer)
  end
end
