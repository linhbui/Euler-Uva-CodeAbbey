def sum_fibonacci(n)
  last = 2
  nlast = 1
  sum = 2
  while true
    fi = last + nlast
    if fi > n
      return sum
    elsif fi%2 == 0
      sum += fi
    end
    nlast = last
    last = fi
  end
end

puts sum_fibonacci(4000000)