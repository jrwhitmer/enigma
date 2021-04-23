require './lib/offset'
require './lib/offset_generator'
require 'rspec'

Rspec.describe Offset do

  it 'Offset Generator exists within Offset class' do
    expect(Offset.ancestors).to include(OffsetGenerator)
  end
end
