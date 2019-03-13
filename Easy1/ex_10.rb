# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary. If the boolean is true,
# the bonus should be half of the salary. If the boolean is false,
# the bonus should be 0.

input:
  positive integer
  boolean = true or false
output:
  true => half of integer
  false => 0

  Validation:
  Example 1:
  INPUT
  integer => 2800
  boolean => true

  OUTPUT
  1400

  Example 2:
  INPUT
  integer => 1000
  boolean => 0

  OUTPUT
  0

  Example 3:
  INPUT
  integer => 2000
  boolean => hshshs

  OUTPUT
  "not a valid boolean option"

  Example 4:

  INPUT
  integer = -4444
  boolean = true

  OUTPUT
  "not a valid integer, it should be a positive value"

Mental model:
determine if the bonus amount should be 0 or half of the integer provided based
on the input false (0) or true (half)


ALGORITHM
1. create a method that takes two arguments
  calculate_bonus(integer, boolean)


2. compare if the input boolean is true or false

  If boolean true then divive salary and return the result of the operation (assign this result to a variable)
  if boolean false return 0 (assign result to a variable)

3. print the output to the screen



def calculate_bonus(integer, boolean)
  boolean ? (integer / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
