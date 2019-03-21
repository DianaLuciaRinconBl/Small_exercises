def sum(n1, n2)
  n1 + n2
end

def multiply(n1, n2)
  n1 * n2
end

def square(n)
  multiply(multiply(multiply(n, n), n), n)
end

puts square(2)
puts square(-8)
