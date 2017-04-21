require('rspec')
require('anagrams_and_antigrams.rb')

describe ('String#is_word') do
  it("Takes an input and determines if it is word") do
    expect('lll'.is_word()).to(eq(false))
  end
end

describe ('String#is_anagram') do
  it("Takes an input and determines if it is an anagram") do
    expect('admirer'.is_anagram('married')).to(eq('these words are anagrams.'))
  end
end
