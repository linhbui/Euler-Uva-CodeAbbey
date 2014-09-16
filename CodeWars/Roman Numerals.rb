# complete the solution by transforming the 
# string roman numeral into an integer

def solution(roman)
  dict = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000, "N" => 0 }
  return 0 if roman == "N"
  arr = roman.split(//)
  
  arr.each do |char|        # check if all characters are valid
     if !dict.keys.include?(char)
        raise "Invalid"
     end  
  end
  
  fre = Hash.new(0)
  arr.each do |char|
    fre[char] += 1
  end
  
  raise "Invalid" if fre["V"], fre["L"], fre["D"] == 2 # these characters can't appear twice
  
  fre.each_value do |value| # a character can't repeat more than 3 times
    if value > 3
      raise "Invalid"
    end
  end
  
  # translation starts

  num = 0
  last = arr.length
  arr<<'N'
  i = 0
  while i < last
    if dict[arr[i]] < dict[arr[i+1]]
       num += (dict[arr[i+1]] - dict[arr[i]])
       i += 2
    else
       num += dict[arr[i]]
       i += 1
    end
  end   
  return num  
end
  
