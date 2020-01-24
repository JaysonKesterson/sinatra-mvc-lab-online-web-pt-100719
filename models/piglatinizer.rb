class PigLatinizer
  
  def initialize
  end
  
  # def piglatinize(phrase)
  #   if phrase.start_with?((/[bcdfghjklmnpqrstvwxyz]/))
  #   phrase_array = phrase.split("")
  #   phrase_array = phrase_array.rotate(1)
  #   piglatin = phrase_array.join + "ay"
  #   piglatin
  #   else
  #   word + "way" 
  #   end
  # end
  
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
        if ["a", "e", "i", "o", "u"].include?(word[1]) == false
          consonants << word[1]
          if ["a", "e", "i", "o", "u"].include?(word[2]) == false
            consonants << word[2]
          end
        end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
end
end