# input
# 2 integers
# output
# print result:
# addition
# subtraction
# product
# quotient
# remainder
# power

def prompt(message)
  puts "==> #{message}"
end


prompt "Enter the first number: "
number1 = gets.chomp.to_i

prompt "Enter the second number: "
number2 = gets.chomp.to_i

def operations(a, b)
  prompt "#{a} + #{b} = #{a + b}"
  prompt "#{a} - #{b} = #{a - b}"
  prompt "#{a} * #{b} = #{a * b}"
  prompt "#{a} / #{b} = #{a / b}"
  prompt "#{a} % #{b} = #{a % b}"
  prompt "#{a} ** #{b} = #{a ** b}"
end

puts "====================="
operations(number1, number2)
