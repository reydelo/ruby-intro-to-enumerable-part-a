def reduce(input)
  result = ""
  input.each do |x|
    result << x
  end
  result
end
# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#reduce' do
  it 'returns an string of the concatonation plus space of words in the array' do
    input = ['Super', 'cali', 'fragi', 'listic', 'expial', 'i', 'do', 'cious']

    expect(reduce(input)).to eq('Supercalifragilisticexpialidocious')
  end
end
