# Write a method that takes one argument, a positive integer, and returns
# a list of the digits in the number.

def digit_list(number)
  list = []

  loop do
    number, remainder = number.divmod(10)
    list.unshift(remainder)
    break if number == 0
  end
  list
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
