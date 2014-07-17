#delete characters from a string. remove_str(str,remove). 
# any character existing in remove must be deleted from str. 
#eg "Battle of the Vowels: Hawaii vs. Grozny" and remove "aeiou"
# => "Bttl f th Vwls: Hw vs. Grzny"

# Ruby
def remove_str(str, remove)
  original = str.split(//)
  deleted = remove.split(//)
  deleted.each {|char| original.delete(char)}
  return original.join
end

# Real version
# With this one, seems like using linked list will be the best choice. Linked list then use queue.

            
## Using lookup array version. The idea is to build a look up array that has n element (n = str.length), all set to false. Go through remove array

def remove_str(str, remove)
  original = str.split(//)
  last_idx = original.length - 1
  deleted = remove.split(//)
  lookup = Array.new(original.length, false)
  for i in 0..last_idx
    if deleted.include?(original[i])
      lookup[i] = true
    end
  end
  results = []
  for i in 0..last_idx
    results<<original[i] if lookup[i] == false
  end
  return results.join
end
  
p remove_str("Battle of the Vowels: Hawaii vs. Grozny", "aeiou")


  