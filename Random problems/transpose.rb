def my_transpose array
  result = []
  last = array.count - 1
  for i in 0..last
    col = []
    for j in 0..last
      col << array[j][i]
    end
    result << col
  end
  
  result
end


  