# # Simon Says
#
# ## Topics
#
# * functions
# * strings
# * default parameter values
#
# ## Hints
#
# When you make the second `repeat` test pass, you might break the **first**
#

def echo(str)
  str
end

def shout(str)
  str.upcase
end 
  
def repeat(str,n=2)
  ([str]*n).join(" ")
end
    
def start_of_word(str, n)
  return str[0, n]
end

def first_word(str)
  arr = str.split(" ")
  return arr[0]
end

def titleize(str)
  arr = str.split(" ")
  last_idx = arr.count - 1
  for i in 0..last_idx
    if %w(and over the).include?(arr[i]) == false
      arr[i] = arr[i].capitalize
    end
  end
  arr[0] = arr[0].capitalize
  return arr.join(" ")
end

