# Write a program that will ask for user's name. The program will then greet
# the user. If the user writes "name!" then the computer yells back to the user.
#
# INPUT
# string with a name
# OUTPUT
# string with a greeting message
#
# MENTAL MODEL:
# ask for a string with a name and otput a message with the string interpolated.
# If he string input has a ! then output the greeting message in capital letters.
#
# VALIDATION EXAMPLES:
#
# What is your name? Fiona
# Hello Fiona.
#
# What is your name? Fiona!
# HELLO FIONA. WHY ARE WE SCREAMING?
#
# 1. Ask for input
# 2. save input to a variable
# 3. check if input had special character !
#     - if true then print message in upcase
#     - if false then just print plane message

def validation(names)
  names[-1] == '!'
end

puts "What is your name: "
name = gets.chomp!

if validation(name)
  name.chop!
  puts  "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
