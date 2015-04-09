def reject_words_longer_than(words, length)
  array = []
  words.each do |word|
    if word.length <= length
      array << word
    end
  end
  array
end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#reject_words_longer_than' do
  it 'returns an array of words where all the words longer than the given length are removed' do
    input = ['a', 'big', 'black', 'bear', 'is', 'running']

    expect(reject_words_longer_than(input, 1)).to eq(['a'])
    expect(reject_words_longer_than(input, 3)).to eq(['a', 'big', 'is'])
  end

  it 'returns an empty array when given an empty array' do
    expect(reject_words_longer_than([], 0)).to eq([])
  end
end
