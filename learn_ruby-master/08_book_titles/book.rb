# # Book Titles
#
# # Topics
#
# * classes and objects
# * instance variables
# * setter methods
# * strings
#
# # Notes
#
# Book Titles in English obey some strange capitalization rules. For example, "and" is lowercase in "War and Peace". This test attempts to make sense of some of those rules.
#

class Book
  attr_reader :title
  def title=(book)
    arr = book.split(" ")
    last_idx = arr.count - 1
    for i in 0..last_idx
      if %w(and over the a an in of).include?(arr[i]) == false
        arr[i] = arr[i].capitalize
      end
    end
    arr[0] = arr[0].capitalize
    @title = arr.join(" ")
  end
    
end

