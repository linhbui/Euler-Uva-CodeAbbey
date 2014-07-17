#Ruby style
def reverse_words(str)
  words = str.split(" ")
  last_idx = words.length - 1
  i = last_idx
  reverse = []
  while i >= 0
    reverse<<words[i]
    i -= 1
  end
  return reverse.join(" ")
end

#super Ruby style
def reverse_words(str)
  words = str.split(" ")
  words.reverse!
  return words.join(" ")
end

# Sad manual style: write reverse string function, then detect each word and do a second reverse

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

def reverse_words(str)
  last_idx = str.length - 1
  reversed = reverse_str(str)
  results = ""
  start_char = 0
  end_char = 0
  i = 0
  while i <= last_idx
    if reversed[i] == " "
      end_char = i
      results<<reverse_str(reversed[start_char..end_char])
      results<<" "
      start_char = i + 1
    end
    i += 1
  end
  return results[0..-2]
end
  
  
  
  
    