#write your code here

def echo echo
  "#{echo}"
end

def shout shout
  "#{shout.upcase}"
end

def repeat word, number=2
  a = "#{word}"
  (number-1).times do
    a << " #{word}"
  end
  a
end

def start_of_word word, number
  word[0..number-1]
end

def first_word words
  a = ""
  words.each_char do |char|
    return a if (char == " ")
    a = a + char
  end
end


def little_word_check word

    littleCheck = false

    littleWords = %w(and or the over)
    littleWords.each do |littleWord|

      if (littleWord == word)
        littleCheck = true
        break
      end
    end

    littleCheck
end

def titleize words
  a = words.split
  a.each do |word|
    if !little_word_check(word)
      word.capitalize!
    elsif a.first.eql?(word)
      word.capitalize!
    end

  end
  a.join(" ")
end

puts titleize "hallo du"
