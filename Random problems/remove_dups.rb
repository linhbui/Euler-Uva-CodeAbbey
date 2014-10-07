class Array
  def my_uniq
    new_array = []
    self.each { |i| new_array << i if !new_array.include?(i) }
    new_array
  end
end
