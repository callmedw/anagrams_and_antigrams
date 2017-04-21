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
