#write your code here
def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, times = 2)
  ([str] * times).join(' ')
end

def start_of_word(str, num)
  str[0...num]
end

def first_word(str)
  str.split(' ')[0]
end

def titleize(title)
  little_words = %w(a an the and but or for nor in on at to from by over with)
  words_array = title.split.map.with_index do |word, index|
    if index == 0 || !little_words.include?(word)
      word.capitalize
    else
      word
    end
  end
  words_array.join(' ')
end