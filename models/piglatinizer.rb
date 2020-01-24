class PigLatinizer
  
  def initialize
  end
  
  def piglatinize(string)
    split_words = string.split(" ")
    pig_split_words = split_words.map {|word| piglatinize_it(word)}
    pig_split_words.join(" ")
  end
  
  def piglatinize_it(word)
    first_letter = word[0].downcase
    if ["a", "e", "i", "o", "u"].include?(first_letter)
        "#{word}way"
    else
      consonants = []
      consonants << word[0]
      new_word = word.gsub(word[0],"")
      new_word.split("").each do |letter|
        if ["a", "e", "i", "o", "u"].include?(letter) == false
          consonants << letter
        else
          break
        end
      end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
end
end