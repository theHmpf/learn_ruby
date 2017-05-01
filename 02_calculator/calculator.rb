#write your code here

def add summand1, summand2
  summand1 + summand2
end

def subtract sub1, sub2
  sub1 - sub2
end

def sum array
  x = 0
  array.each do |item|
    x = x + item
  end
  x
end

def multiply *multiples
  x = 1
  multiples.each do |element|
    x = x * element
  end
  x
end

def power x, y
  answer = 1
  y.times do
    answer = answer * x
  end
  answer
end
