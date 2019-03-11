# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never
# be empty and the numbers will always be positive integers.

def average(array)
  sum = 0

  if array.empty? || array.index {|x| x > 0} == 1
    puts "Your array may be empty or contain negative intergers"
   else
    array.each do |int|
      sum +=int
    end
    sum /= array.size
   end
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([2, 4, 5, 6])
puts average([ ])
