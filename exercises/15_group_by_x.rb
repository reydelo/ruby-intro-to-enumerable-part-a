def group_by_x(input)
  result = {}
  input.each do |obj|
    result[obj[:x]] = []
  end
  input.each do |obj|
    result.each do |key, value|
      if key == obj[:x]
        value << obj
      end
    end
  end
  result
end
# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#group_by_x' do
  it 'returns a hash where the values are arrays of items, grouped by the :x key' do
    input = [
      {x: 1, y: 6},
      {x: 5, y: 1},
      {x: 5, y: 8},
    ]

    expected_result = {
      1 => [ {x: 1, y: 6} ],
      5 => [
        {x: 5, y: 1},
        {x: 5, y: 8},
      ],
    }

    expect(group_by_x(input)).to eq(expected_result)
  end

  it 'returns an empty hash when given an empty array' do
    expect(group_by_x([])).to eq({})
  end

  it 'returns nil as a key when given a hash with no x' do
    input = [ {y: 5} ]

    expect(group_by_x(input)).to eq({ nil => [ {y: 5} ] })
  end
end
