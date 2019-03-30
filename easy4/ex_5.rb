# input
# integer
# output
# integer (sum of all multiples of 3 & 5 between 1 and the input)
#
# 1. define a method that takes an argument
#   1. create a new array that will take multiples
#
# 2. check if the integer passed is greater than 0
#
# 3. find the multiples of 3 & 5 between 1 and the integer passed
#   1. range from 1..integer and use select method
#   2. find if current number is divisible by 3 or 5
#   3. if so add current number to new array
#
# 4. return the sum of the multiples
#   1. use reduce method to add all the integers in new array
#   2. return the sum of multiples

def multisum(num)
  new_array = []

  if num > 0
    (1..num).select do |multiple|
    if multiple % 3 == 0 || multiple % 5 == 0
      new_array << multiple
    end
  end
  else
    puts "Integer entered needs to be greater than 0"
  end

  new_array.sum

end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
