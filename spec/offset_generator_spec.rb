require './lib/offset'
require './lib/offset_generator'
require 'rspec'

RSpec.describe Offset do

  it 'Offset Generator exists within Offset class' do
    expect(Offset.ancestors).to include(OffsetGenerator)
  end

  it 'can generate an offset from a date' do
    date = "16-05-2003"
    offset = Offset.new(date)
    expect(offset.generate_offset(date).class).to eq(Integer)
    expect(offset.generate_offset(date)).to eq(2009)
  end
end
