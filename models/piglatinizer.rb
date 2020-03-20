class PigLatinizer



  def piglatinize(text_input)
    split_input = text_input.split(" ")
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    split_input.map! do |word|
      if vowels.include?(word[0])
        word = word + "way"
      elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
        word = word[2..-1] + word[0] + word[1] + "ay"
      else
        word = word[1..-1] + word[0] + "ay"
      end
    end
    split_input.join(" ")
  end

end
