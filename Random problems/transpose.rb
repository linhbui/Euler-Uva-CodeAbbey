def my_transpose array
  result = []
  arr.count.times do |i|
    col = []
    arr.count.times do |j|
      col << array[j][i]
    end
    result << col
  end
  
  result
end


  