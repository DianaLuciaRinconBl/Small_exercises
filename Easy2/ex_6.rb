# Print all odd numbers from 1 to 99, inclusive.
# All numbers should be printed on separate lines.
#
# Inputs
# all numbers from 1 to 99
# Output
# odd number only within 1 and 99
#
# METAL MODEL:
# print in separate lines all odd numbers in the range of 1 to 99
#
# Valiation example:
# 1
# 3
# 5
# 7
# 9
# ...
# 99
#
# 1. find the odd number between 1 and 99
#   - iterate through each integer in the range and find out if it is odd?
# 3. use a method to print output in separate lines

# (1..99).each { |num| p num if num.odd? }
#
# or

1.upto(99) {|num| p num if num % 2 == 1}
