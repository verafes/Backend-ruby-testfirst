def translate(string)
  vowels = %w(a e i o u)

  translated_str = string.split.map do |word|
    # Capture and remove punctuation
    punctuation = word.match(/[[:punct:]]$/) ? word[-1] : ''
    word = word.chomp(punctuation)

    # Preserve capitalization
    capitalized = word[0] == word[0].upcase
    word = word.downcase

    if vowels.include?(word[0])
      pig_word = word + "ay"
    else
      # Handle 'qu' as a single phoneme
      if word.start_with?('qu')
        pig_word = word[2..-1] + "quay"
      else
        # Index of the first vowel
        first_v_inx = word.index(/[aeiou]/)
        # Handle 'qu' after a consonant
        if word[first_v_inx - 1] == 'q'
          first_v_inx += 1
        end

        # Handle consonant clusters
        cluster = word[0...first_v_inx]
        rest_of_word = word[first_v_inx..-1]

        pig_word = rest_of_word + cluster + "ay"
      end
    end

    # Restore capitalization
    pig_word.capitalize! if capitalized

    # Restore punctuation
    pig_word += punctuation
  end

  translated_str.join(' ')
end