class PigLatinizer

  def initialize(text)
    @text = text

  end

  def self.convert_to_pig_latin
    split_input = @text.split(" ")
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    split_input.each do |word|
      if vowels.include?(word.first)
        word = word + "way"
      else
        word = word.substring(1) + word.first + "ay"
      end
    end
    split_input.join(" ")
  end
end
