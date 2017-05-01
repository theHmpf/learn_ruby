#write your code here

def isVowel? char
  return (char == "a" || char == "e" || char == "i" || char == "o" || char == "u") ? true : false
end

def translate multipleWords
  words = multipleWords.split
  words.each do |word|

    a = word[0]
    #translates a word beginning with a consonant

    word.each_char do |char|
      #break if ther's a vowel
      if isVowel? char
        if !(char == "u" && word[word.length-1] == "q")
          word << "ay"
          break
        end
      end
      #adds first char to the word and deletes it in the front position
      word << char
      word[0] = ""
    end

  end
  words.join(" ")
end
