# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# INPUT:
# random number generated
# OUTPUT:
# an integer
#
#
# MENTAL MODEL: randmly generate an output a number between 20 to 200
#
# DATA STRUCTURE AND ALGORITH:
#
# 1. create an array that includes numbers from 20 to 200
#
#   age = [20..200]
#
# 2. use a method that selects a random number from the array
#
#   rand()
#
# 3. print the number selecter to the screen
#
# puts "Teddy is #{age_selected} years old"
#
# Example:
# Teddy is 69 years old!


# #CODE:
#
age = rand(20..200)
puts "Teddy is #{age} years old"
#
# # Modify this program to ask for a name, and then print the age for that person.
# # For an extra challenge, use "Teddy" as the name if no name is entered.
#
# INPUT:
# name
# random number generated
# OUTPUT:
# the random number + the name
# teddy as default if no name entered + random number
#
# DATA STRUCTURE AND ALGORITHM:
#
# 1. Ask for input name
# 2. select random number from 20 to 200
# 3. if name wasn't entered then print Teddy + random number ,
#    otherwise print name + randome number

puts "Please enter name"
name = gets.chomp

age = rand(20..200)

if name.empty?
   puts "Teddy is #{age} years of age"
else
    puts "#{name} is #{age} years of age"
end
