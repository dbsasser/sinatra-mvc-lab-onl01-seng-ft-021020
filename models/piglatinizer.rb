class PigLatinizer

  

  def convert_to_pig_latin
    split_input = @text.split(" ")
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    split_input.map! do |word|
      if vowels.include?(word[0])
        word = word + "way"
      else
        word = word[1..-1] + word[0] + "ay"
      end
    end
    split_input.join(" ")
  end

end
