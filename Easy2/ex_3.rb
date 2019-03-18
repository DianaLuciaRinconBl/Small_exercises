# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the
# tip and the total amount of the bill.

# INPUT
# bill integer
# tip rate percentage integer
# OUTPUT
# total tip (bill * tip%)
# total bill (tip + bill)
#
# METAL MODEL:
# Get a number for bill and a number for tip rate, then calculate how much the till would be and add it to the bill
#
# 1. Ask for bill and save to variable
# 2. Ask for tip rate and save to variable
# 3. Multiply bill times tip rate and sabe result to variable
# 4. Add previous result to bill variable and save result to variable

# validation examples:
# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0
#
# What is the bill? 500
# What is the tip percentage? 5
#
# The tip is $25.0
# The total is $525.0

puts "What is the bill? "
bill = gets.to_f

puts "What is the tip percentage"
tip_rate = gets.to_f
tip_rate /= 100

tip = bill * tip_rate
total_bill = tip + bill

puts "The tip is #{tip}"
puts "The total is #{total_bill}"
