class Timer
  #write your code here

  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(nbr)
    @seconds = nbr
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds%3600)/60
    seconds = (@seconds%3600%60)
    puts "#{hours}, #{minutes}, #{seconds}"
    return "#{format hours }:#{format minutes }:#{format seconds }"
  end

  def format time
    if time < 10
      return "0#{time}"
    else
      return "#{time}"
    end
  end
end
