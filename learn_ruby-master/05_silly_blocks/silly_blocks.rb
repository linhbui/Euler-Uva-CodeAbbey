# # Topics
#
# * blocks
# * closures
# * yield
# * loops
#

def reverser
  arr = yield.split(" ")
  arr.each do |word|
    word.reverse!
  end
  return arr.join(" ")
end

def adder(num = 1)
  return yield + num
end

def repeater(num = 1)
  num.times do yield
  end
end
  
