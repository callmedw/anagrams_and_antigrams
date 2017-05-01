require('rspec')
require('anagrams_and_antigrams.rb')

describe('String') do
  describe ('#is_word?') do
    it("Takes an input and determines if it is word") do
      expect('lll'.is_word?()).to(eq(false))
    end
  end

  describe ('#is_anagram?') do
    it("Takes an input and determines if it is an anagram") do
      expect('admirer'.is_anagram?('married')).to(eq(true))
    end
  end

  describe ('#is_palindrome?') do
    it("Takes an input and determines if it is a palindrome") do
      expect('dad'.is_palindrome?()).to(eq(true))
    end
  end

  describe ('#is_antigram?') do
    it("Takes an input and determines if it is a antigram") do
      expect('dad'.is_antigram?('roger')).to(eq(false))
    end
  end

  describe ('#pass_the_test') do
    it("Takes two inputs of any length to determine four factors: is it a word, is it an anagram, is it a palindrome, and is it an anitgram") do
      expect('Web Developer'.pass_the_test('Rebel Deep Vow')).to(eq("These are anagrams, but they are not palindromes."))
    end
  end
end
