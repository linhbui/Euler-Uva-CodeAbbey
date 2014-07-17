def multiples(n)
  sum = 0
  for i in 0..(n-1)
    if (i%3 == 0 || i%5 == 0)
      sum += i
    end
  end
  return sum
end

puts multiples(1000) 