# Print the even numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.

# inputs
# range from 1 to 99
# output
# even integers only within that range
#
# for num in (1..99)
#   p num if num.even?
# end
#
# or

# (1..99).to_a.select {|num| p num if num % 2 == 0}

# or
#
# 1.upto(99) {|num| p num if num.even?}
#
# or
#
num = 1

while num < 99
  puts num if num.even?
  num += 1
end
