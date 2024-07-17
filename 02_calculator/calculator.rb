#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  return 0 if array.empty?
  array.reduce{ |sum, num| sum + num }
end

def multiply(array)
  array.reduce(1, :*)
end

def power (b, e)
  b ** e
end

def factorial(num)
  if num!=0
    (1..num).reduce(1, :*)
  else
    return 1
  end
end
