class String
  define_method(:is_word) do
    vowels = ["a", "e", "i", "o", "u"]
    downcase_word = self.downcase()
    split_word = downcase_word.split("")
    result = false
    split_word.each() do |letter|
      if vowels.include?(letter)
        result = true
      end
    end
     result
  end
end
