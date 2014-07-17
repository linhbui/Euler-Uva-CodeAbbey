# # Topics:
# * floating-point math
# * objects
# * constructors
# * class methods
# * factory methods
# * options hashes
#
# # Hints
#
# Remember that one degree fahrenheit is 5/9 of one degree celsius, and that the freezing point of water is 0 degrees celsius but 32 degrees fahrenheit.
#
# Remember to define the `from_celsius` factory method as a *class* method, not an *instance* method.
#
# The temperature object's constructor should accept an *options hash* which contains either a `:celcius` entry or a `:fahrenheit` entry.
#
#
#

class Temperature

  def initialize options
    @fahrenheit = options[:f] || options[:c] * (9.0/5.0) + 32
  end
  
  def self.from_celsius(celsius)
    new(:c => celsius)
  end

  def self.from_fahrenheit(fahrenheit)
    new(:f => fahrenheit)
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    (@fahrenheit - 32) * (5.0/9.0)
  end

  def ftoc(f)
    (f-32) * (5.0/9.0)
  end

  def ctof(c)
    c * (9.0/5.0) + 32
  end
end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end


class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end

