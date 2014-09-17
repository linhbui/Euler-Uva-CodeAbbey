# Turn number into Roman numerals

# Non recursive way
def solution(number)
  dict = { 1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL",
           50 => "L", 90 => "XC", 100 => "C", 400 => "CD", 500 => "D",
           900 => "CM", 1000 => "M", 10000 => "Z" }
  result = ""
  n = 0
  while number > 0
    for i in 0..13
        if dict.keys[i] <= number && number < dict.keys[i+1]
          n = dict.keys[i]
          result += dict[n]
        end
    end
    number -= n
  end
  return result     
end

# Recursive way
DICT = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
         L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }
               
def solution(number)
  return '' if number <= 0
  DICT.each { |key, val| return key.to_s + solution(number - val) if number >= val }
end