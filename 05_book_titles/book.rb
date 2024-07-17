class Book
  attr_reader :title

  def title=(new_title)
    @title = capitalize_title(new_title)
  end

  private

  def capitalize_title(title)
    little_words = %w[a an the and but or for nor in on at to from by over with]

    words = title.split

    # Capitalize words except little words
    words.each_with_index.map do |word, index|
      if index == 0 || !little_words.include?(word)
        word.capitalize
      else
        word
      end
    end.join(" ")
  end
end
