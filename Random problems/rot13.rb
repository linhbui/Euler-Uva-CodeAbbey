=begin
ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

Create a method that takes a string as an argument and returns the string ciphered with Rot13. If there are numbers or special characters included in the string, they should be returned as they are. Only letters from the latin/english alphabet are used in the test cases, and only these should be shifted, like in the original Rot13 "implementation".
=end

def rot13(string)
  abc = 'abcdefghijklmnopqrstuvwxyz'.split(//) * 2
  results = []
  last = string.length - 1
  for i in 0..last
    if string[i] =~ /\A\d+\z/ ? true : false
       results<<string[i]
    elsif %w(< > ? , . / ; ' : " [ } { ] \ | ` ~ ! @ # $ % ^ & * ( ) - _ + = ).include?(string[i])
       results<<string[i]
    elsif string[i] == " "
       results<<string[i]       
    else
    j = abc.index(string[i].downcase) + 13
      if string[i] == string[i].upcase
         results<<(abc[j].upcase)
      else
         results<<abc[j]
      end
    end
  end
  results.join 
end