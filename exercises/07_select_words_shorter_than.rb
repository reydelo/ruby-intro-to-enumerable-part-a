def select_words_shorter_than(words, length)
  array = []
  words.each do |word|
    if word.length < length
      array << word
    end
  end
  array
end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#select_words_shorter_than' do
  it 'returns an array of words shorter than the given length' do
    input = ['a', 'big', 'black', 'bear', 'is', 'running']

    expect(select_words_shorter_than(input, 3)).to eq(['a', 'is'])
    expect(select_words_shorter_than(input, 4)).to eq(['a', 'big', 'is'])
  end

  it 'returns an empty array when given an empty array' do
    expect(select_words_shorter_than([], 0)).to eq([])
  end
end
