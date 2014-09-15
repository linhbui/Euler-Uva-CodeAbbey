=begin
Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, is to score a throw according to these rules. You will always be given an array with five six-sided dice values.

 Three 1's => 1000 points
 Three 6's =>  600 points
 Three 5's =>  500 points
 Three 4's =>  400 points
 Three 3's =>  300 points
 Three 2's =>  200 points
 One   1   =>  100 points
 One   5   =>   50 point
A single die can only be counted once in each roll. For example, a "5" can only count as part of a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.
=end

def score( dice )
  total = 0
  f = Hash.new(0)
  dice.each { |num| f[num] += 1 }
  scoring = { 1 => 1000, 6 => 600, 5 => 500, 4 => 400, 3 => 300, 2 => 200 }
  f.each do |key, value|
    if value >= 3
       total += scoring[key]
       f[key] -= 3
    end
  end
  total += (f[1]*100 + f[5]*50)
end