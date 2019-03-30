# input
# array
# output
# new array
#
# return an array with the sum of the numbers previous to that number
#
# 1. define a method that takes an argument (array)
# 2. create a new array
# 3. iterate through each integer of original array/ use map method
# 4. acumulate the sum of the numbers at each iteration
# 5. push the acumulation number to the new array
# 6. return the new array



ONE SOLUTION
def running_total(array)
  new_array = []
  accumulation = 0

  array.map do |num|
    accumulation += num
    new_array << accumulation
  end

  new_array
end

# ANOTHER SOLUTION
# def running_total(array)
#   accumulation = 0
#
#   array.each_with_object([ ]) do |num, arr|
#     arr << accumulation += num
#   end
# end
#
# ANOTHER SOLUTION
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
