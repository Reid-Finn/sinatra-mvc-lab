class PigLatinizer

    attr_reader :user_text

    def initialize(text)
        @text = text.split
    end

    
    def piglatined
        piglatined_phrase = @text.map{|word| convert_to_latin(word)}
        piglatined_phrase.join(" ")
    end
    
    
    
    
    def convert_to_latin(word)
        if word.index[0] == "a" || "e" || "i" || "o" || "u"
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
