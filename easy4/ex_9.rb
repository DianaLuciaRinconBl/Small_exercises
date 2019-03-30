
def integer_to_string(integer)
  integer.digits.reverse.join

end


puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
