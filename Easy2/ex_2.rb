# Build a program that asks a user for the length and width of a room in
# meters and then displays the area of the room in both square meters
# and square feet.
#
# Note: 1 square meter == 10.7639 square feet
#
# Do not worry about validating the input at this time.
#
# INPUT:
# lenght number
# width number
# OUTPUT
# area of the room in meters
# area of room in square feet
#
# MENTAL MODEL:
# From 2 input numbers (length and width) calculate the area of a room in both
# square meters and square feet.
#
# Validation examples:
#
# lenght: 5
# Width: 3
#
# square meters: 15.0
# square feet: 161.46
#
# if one of the inputs is 0 then invalidate it and ask for inout again
#
# if the input is not an integer then invalidate it and ask again
#
# 1. Ask for length
# 2. Ask for Width
# 2.1 Validate if inputs are integers
#     if they are not then ask again
# 2.2 Validate if inputs are 0
#     if they are then ask again
# 3. Square meters: Multiply lenght and width values and assign result to a variable
# 4. use the variable to multiply it for 10.7639 to find square feet and assign result to a variable

SQUARE_FEET = 10.7639
def validation(integer)
  integer.to_f != 0 #here if the input is a string this will return false as string.to_f is always 0 but integer to_f is the number itself
end

puts "Please enter the length of the room: "
length = gets.to_f

puts "Please enter the width of the room: "
width = gets.to_f

if validation(length) && validation(width)
  square_meters = (length * width).round(2)
  square_feet = (square_meters * SQUARE_FEET).round(2)
else
  puts "Inputs are not valid, Please enter a positive number"
end

puts "The are of the room is #{square_meters} square meters (#{square_feet} square feet)"
