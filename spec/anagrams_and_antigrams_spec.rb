require('rspec')
require('anagrams_and_antigrams.rb')

describe('String#word_test') do
  it ('takes user input of two words and makes sure they are words') do
    expect('spring').word_test('equinox').to(eq('these are words'))
  end
end
