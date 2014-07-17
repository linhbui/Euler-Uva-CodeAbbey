upper_bound = 355000

def sum_digit(num)
  arr = num.to_s.split(//)
  sum = 0
  arr.each do |digit|
    sum = sum + (digit.to_i)**5
  end
  return sum
end

sum = 0
for i in 2..355000
  if i == sum_digit(i)
    sum = sum + i
  end
end

p sum

  