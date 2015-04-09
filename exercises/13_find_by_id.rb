# def find_by_id(collection, id)
#   # collection.reduce(nil) do |result, obj|
#   #   if obj[:id] == id
#   #     result = obj
#   #   end
#   #   result
#   # end
# end

# def find_by_id(words, input)
#   words.map do |word|
#     word if word[:id] == input
#   end.reject do |w|
#     w.nil?
#   end[0]
# end

def find_by_id(input, value)
  hash = nil
  input.each do |input|
    if input[:id] == value
      hash = input
    end
  end
  hash
end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#find_by_id' do
  it 'returns the hash where the value for the id key matches the given id' do
    input = [
      {id: 3, name: 'English'},
      {id: 5, name: 'Spanish'},
      {id: 7, name: 'French'},
    ]

    expect(find_by_id(input, 5)).to eq({id: 5, name: 'Spanish'})
  end

  it 'returns nil when given an empty array' do
    expect(find_by_id([], 10)).to eq(nil)
  end

  it 'returns nil when given an id that does not exist in the array' do
    input = [ {id: 3, name: 'English'} ]

    expect(find_by_id(input, 8)).to eq(nil)
  end
end
