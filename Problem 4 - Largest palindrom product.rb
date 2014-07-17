def check_palindrom(n)
  if n.to_s == n.to_s.reverse!
    return true
  else
    return false
  end
end

def largest_palindrom(n)
  results = []
  for i in 0..n
    for j in 0..n
      if check_palindrom(i*j)
        results<<(i*j)
      end
    end
  end
  return results.max
end

puts largest_palindrom(999)
      