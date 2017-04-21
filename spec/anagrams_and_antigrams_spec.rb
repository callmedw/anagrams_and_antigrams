require('rspec')
require('anagrams_and_antigrams.rb')

describe ('String#is_word') do
  it("Takes an input and determines if it is word") do
    expect('lll'.is_word()).to(eq(false))
  end
end
