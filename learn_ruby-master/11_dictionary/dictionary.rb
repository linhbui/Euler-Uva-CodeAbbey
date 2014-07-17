# # Topics
#
# * Hash
# * Array
# * instance variables
# * regular expressions
#
class Dictionary
  def entries
    @entries ||= {}
  end

  def add(entry)
    if entry.is_a?(String)
      entries[entry] = nil
    else
      entry.each do |key, value|
        entries[key] = value 
      end
    end   
  end
  
  def keywords
    entries.keys.sort
  end
  
  def include?(word)
    entries.has_key?(word)
  end
  
  def find(prefix)
    results = {}
    length = prefix.length
    entries.each do |key, value|
      if key[0, length] == prefix 
        results[key] = value
      end
    end
    return results
  end
  
  def printable
    entries.map do |key, value|
     %Q{[#{key}] "#{value}"}
    end.sort.join("\n")
  end
end
