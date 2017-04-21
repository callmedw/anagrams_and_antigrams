require('rspec')
require('anagrams_and_antigrams.rb')


describe ('String#is_word') do
  it("Takes an input and determines if it is word") do
      expect('word'.is_word()).to(eq(true))
    end
end
