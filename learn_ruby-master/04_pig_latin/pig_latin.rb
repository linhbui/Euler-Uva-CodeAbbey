def translate(str)
  arr = str.split(" ")
  arr = arr.map do |word|
    if word[0, 3] == "thr"
      word = word[3..-1] + word[0, 3] + "ay"
    elsif %(ch qu th br).include?(word[0, 2])
      word = word[2..-1] + word[0, 2] + "ay"
    elsif %(sch squ).include?(word[0, 3]) 
      word = word[3..-1] + word[0, 3] + "ay"
    elsif %w(a e i o u).include?(word[0])
      word = word + "ay"
    else
      word = word[1..-1] + word[0] + "ay"
    end
  end
  return arr.join(" ")
end


