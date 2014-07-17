# # Array Extension
#
# # Topics
#
# * objects, methods, classes
# * reopening classes
#
class Array
  def sum
    result = 0
    self.each do |num|
      result += num
    end
    return result
  end
  
  def square
    result = []
    self.each do |num|
      result<<num**2
    end
    return result
  end
  
  def square!
    i = 0
    last_idx = self.count - 1
    for i in 0..last_idx
      self[i] = self[i]**2
    end
    return self
  end

end

