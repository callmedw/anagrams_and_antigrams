class String

  define_method(:is_word?) do
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

  define_method(:is_anagram?) do |input_2|
    result = false
    first_word = self.downcase().split("")
    second_word = input_2.downcase.split("")
      if (first_word.sort == second_word.sort)
        result = true
      end
      result
    end

  define_method(:is_palindrome?) do
    result = false
    if self == self.reverse()
      result = true
    end
    result
  end

  define_method(:is_antigram?) do |input_2|
    result = false
    first_word = self.downcase().split("")
    second_word = input_2.downcase.split("")
    first_word.each() do |letter|
      if second_word.include?(letter)
        result = true
      end
    end
    result
  end

  define_method(:pass_the_test) do |input_2|
    result = 'blerg!'
    first_string = self.gsub!(/[^0-9A-Za-z]/, '')
    second_string = input_2.gsub!(/[^0-9A-Za-z]/, '')
    if first_string.is_word?() == true && second_string.is_word?() == true
      if first_string.is_anagram?(second_string) == true
        if first_string.is_palindrome? == true && second_string.is_palindrome? == true
          result = "These words are anagrams AND palindromes!"
        else
          result = "These are anagrams, but they are not palindromes."
        end
      else
        if first_string.is_antigram?(second_string) == true
          result = "These are not anagrams, but they are ANTIgrams!"
        else
          result = "These appear to be words, but they are not anagrams or antigrams."
        end
      end
    else
      result = "These are not words. Try again using real, English words."
    end
    result
  end
end
