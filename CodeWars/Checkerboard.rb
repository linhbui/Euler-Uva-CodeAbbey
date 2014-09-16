=begin
Checkerboard

Write a method checkerboard which takes an integer size and returns a checkerboard of dimensions size x size. There are two colored squares on the checkerboard. Red squares are represented by the string [r] and black squares are represented by the string [b]. You should use the newline character \n to insert a newline at the end of each row.

The top left corner should be a red square.
Each row should have alternating squares in the row.
The starting square on each row should also alternate.
=end

# The Ruby way
def checkerboard(size)
  result = ""
  size.times { |i| size.times { |j| result += (i + j) % 2 == 1 ? "[b]" : "[r]" }; result += "\n" }
  return result
end

# The convoluted if/else way that CodeWars asked for
def checkerboard(size)
    return "" if size < 1
    size2 = size * (size+1) #for line_break
    board = ""
    i = 0
    red = true
    line_break = size + 1
    while i < size2
       if (i+1)%line_break == 0
          board<<"\n"
          i += 1
          if size%2 == 0
             red = !red
          end     
       else
          if red
            board<<"[r]"
            red = false
            i += 1
          else
            board<<"[b]"
            red = true
            i += 1
          end
       end
    end  
    return board   
end