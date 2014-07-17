def nonrepeated(str)
  last_idx = str.length - 1
  hash = {}
  hash.default = 0
  for i in 0..last_idx
    hash[str[i]] += 1
  end
  results = []
  hash.each {|key, value| results<<key if value == 1}
  return results[0]
end

p nonrepeated("aaccebbc")


  