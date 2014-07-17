# # Topics
# * arrays
# * arithmetic
# * strings
#
# # RPN Calculator
#
# "RPN" stands for "Reverse Polish Notation". (See [the wikipedia entry](http://en.wikipedia.org/wiki/Reverse_Polish_notation) for more information on this colorful term.) Briefly, in an RPN world, instead of using normal "infix" notation, e.g.
#
#     2 + 2
#
# you use "postfix" notation, e.g.
#
#     2 2 +
#
# While this may seem bizarre, there are some advantages to doing things this way. For one, you never need to use parentheses, since there is never any ambiguity as to what order to perform operations in. The rule is, you always go from the back, or the left side.
#
#     1 + 2 * 3 =>
#     (1 + 2) * 3 or
#     1 + (2 * 3)
#
#     1 2 + 3 * => (1 + 2) * 3
#     1 2 3 * + => 1 + (2 * 3)
#
# Another advantage is that you can represent any mathematical formula using a simple and elegant data structure, called a [stack](http://en.wikipedia.org/wiki/Stack_(data_structure)).
#
# # Hints
#
# Ruby doesn't have a built-in stack, but the standard Array has all the methods you need to emulate one (namely, `push` and `pop`, and optionally `size`).
#

# See
# * <http://en.wikipedia.org/wiki/Reverse_Polish_notation>
# * <http://www.calculator.org/rpn.aspx>
#

class RPNCalculator
  attr_accessor :stack
  
  def initialize 
    @stack = []
  end
  
  def push(value)
    stack<<value.to_f
  end
  
  def pop
    value = stack.pop
    return value
  end
  
  def value
    return stack[-1]
  end
  
  def plus
    num1 = stack.pop
    num2 = stack.pop
    raise "calculator is empty" if num1.nil? || num2.nil?
    sum = num1 + num2
    stack<<sum
    return stack[-1]
  end
  
  def minus
    num1 = stack.pop
    num2 = stack.pop
    raise "calculator is empty" if num1.nil? || num2.nil?
    dif = num2 - num1
    stack<<dif
    return stack[-1]
  end
  
  def times
    num1 = stack.pop
    num2 = stack.pop
    raise "calculator is empty" if num1.nil? || num2.nil?
    result = num1*num2
    stack<<result
    return stack[-1]
  end
  
  def divide
    num1 = stack.pop
    num2 = stack.pop
    raise "calculator is empty" if num1.nil? || num2.nil?
    result = num2/num1
    stack<<result
    return stack[-1]
  end
  
  def tokens(str)
    arr = str.split(" ")
    arr.map do |i|
      if %w(+ - * /).include?(i)
        i.to_sym
      else
        i.to_f
      end
    end
  end
  
  def evaluate(str)
    tokens(str).each do |i|
      case i
      when :+
        plus
      when :-
        minus
      when :*
        times
      when :/
        divide
      else
        push i
      end
    end
    value
  end
  
end
