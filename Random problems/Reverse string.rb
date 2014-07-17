def reverse_str(str)
  last_idx = str.length - 1
  i = last_idx
  results = ""
  while i >= 0
    results = results<<str[i]
    i -= 1
  end
  return results
end