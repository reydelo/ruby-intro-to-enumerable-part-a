def none_empty
end
# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#none_empty?' do
  it 'returns false if there are empty strings anywhere in the array' do
    input = ['a', '', 'b']

    expect(none_empty?(input)).to eq(false)
  end

  it 'returns false if there are nils anywhere in the array' do
    input = ['a', nil, 'b']

    expect(none_empty?(input)).to eq(false)
  end

  it 'returns true if all values are non-empty' do
    input = ['fa', 'la']

    expect(none_empty?(input)).to eq(true)
  end

  it 'returns true when given an empty array' do
    expect(none_empty?([])).to eq(true)
  end
end
