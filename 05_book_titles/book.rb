class Book
# write your code here

  def title
    @title
  end

  def title=(str)
    @title = str.split.each_with_index {|word, index| word.capitalize! if !exception?(word) || index == 0}.join " "
  end

  def exception? word
    exceptions = %w(and or in the of a an)
    exceptions.each do |exception|
      return true if exception == word
    end

    return false

  end
end
