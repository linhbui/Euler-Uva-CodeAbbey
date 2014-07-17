def ftoc(num)
  c = (num - 32)/(9.0/5.0)
  return c.round
end

def ctof(num)
  f = num * (9.0/5.0) + 32
  return f
end