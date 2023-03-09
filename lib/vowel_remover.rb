class VowelRemover
    def initialize(text)
      @text = text
      @vowels = ["a", "e", "i", "o", "u"]
    end
    
    def remove_vowels()
        i = 0
        while i < @text.length()
          # binding.irb
          if @vowels.include?(@text[i].downcase)
            @text = @text.gsub(@text[i].downcase, "/")
            # binding.irb
          end
          i += 1
        end
        return @text.gsub("/", "")
      end
  end

vowel_remover = VowelRemover.new("aeiou")
vowel_remover.remove_vowels