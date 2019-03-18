# # Write a program that asks the user to enter an integer greater than 0,
# # then asks if the user wants to determine the sum or product of
# # all numbers between 1 and the entered integer.
#
# input
# integer greater than 0
# either s for sum or p for product
# output
# the sum of the integer between 1 and the input
# or
# the product of the integers between 1 and the input
#
# mental model:
# Ask for an integers greater than 0 and for either s or p. Based on the inputs
# calculate the sum of all the numbers between 1 and the input or the product
# between 1 and the input
#
# Validation examples:
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
#
#
# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
#
# >> Please enter an integer greater than 0:
# 8
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The sum of the integers between 1 and 8 is 40320.
#
#
# 1. Ask for integer greater than 0
# 2. Ask for s or p
# 3. if s then sum all the integers till input
    #iterate through each integer and save the result to the same variable
#     if p then multiply all the integers till input
# 4. print the result to the screen

# def compute_sum(number)
#   result = 0
#   (1..number).each {|num| result+= num}
#   result
# end
#
# def compute_product(number)
#   result = 1
#   (1..number).each {|num| result*= num}
#   result
# end
#
# def validation(number)
#   number > 0
# end
#
# def validation_operation(input)
#   input == "s" || input == "p"
# end
#
# operation = ''
# integer = ''
#
# loop do
#   loop do
#   puts "Please enter an integer greater than 0: "
#   integer = gets.chomp.to_i
#
#   break if validation(integer)
#   puts "This number is not valid"
#   end
#
#   loop do
#   puts "Enter 's' to compute the sum, or 'p' to compute the product"
#   operation = gets.chomp
#
#   break if validation_operation(operation)
#   puts "Please make sure your answer is valid"
#   end
#
#   if operation == "s"
#     sum = compute_sum(integer)
#     puts "The sum of the integers between 1 and #{integer} is #{sum}"
#     break
#   elsif operation == "p"
#     product = compute_product(integer)
#     puts "The product of the integers between 1 and #{integer} is #{product}"
#     break
#   end
# end


def compute_sum(number)
  (1..number).inject {|result, num| result + num}
end

def compute_product(number)
  (1..number).inject(1) {|result, num| result * num}
end

def validation(number)
  number > 0
end

def validation_operation(input)
  input == "s" || input == "p"
end

operation = ''
integer = ''

loop do
  loop do
  puts "Please enter an integer greater than 0: "
  integer = gets.chomp.to_i

  break if validation(integer)
  puts "This number is not valid"
  end

  loop do
  puts "Enter 's' to compute the sum, or 'p' to compute the product"
  operation = gets.chomp

  break if validation_operation(operation)
  puts "Please make sure your answer is valid"
  end

  if operation == "s"
    sum = compute_sum(integer)
    puts "The sum of the integers between 1 and #{integer} is #{sum}"
    break
  elsif operation == "p"
    product = compute_product(integer)
    puts "The product of the integers between 1 and #{integer} is #{product}"
    break
  end
end





















#ss
