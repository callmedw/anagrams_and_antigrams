class String
  define_method(:is_word) do
    vowels = ["a", "e", "i", "o", "u"]
    split_word = self.downcase().split("")
    result = false
    split_word.each() do |letter|
      if vowels.include?(letter)
        result = true
      end
    end
    result
  end
end

class String
  define_method(:is_anagram) do |input_2|
    first_word = self.downcase().split("")
    second_word = input_2.downcase.split("")
    if self.is_word() == true && input_2.is_word() == true
      if (first_word.sort == second_word.sort)
      'these words are anagrams.'
      else
      'these words are not anagrams.'
      end
    else
      'these are not real words. try again using real words'
    end
  end
end

define_method(:is_palindrome) do |input_2|
  if (self.reverse == self) && (input_2.reverse == input_2)
    'these words are palindromes.'
  else
    'these words are not palindromes.'
  end
end
