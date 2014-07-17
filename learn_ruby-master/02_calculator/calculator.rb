def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(a)
  sum = 0
  a.each {|num| sum += num}
  return sum
end

def multiply(a,b)
  a*b
end

def power(a,b)
  a**b
end

def factorial(n)
  return 1 if n == 0 || n == 1
  factorial(n) = n * factorial(n-1)
  return factorial(n)
end