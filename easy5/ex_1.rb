# input
# string
# output
# integer
#
# pass a string to a method and return the sum of each of the ASCII values
# of the string characters
#
# 1. define the method and pass one argument (string)
# 2. separate the string characters and place them in an array
#   1. use the method split(//)
#   2. assign the array to a variable
# 3. pass each character through the ord method using an map method (transformation)
# 4. apply sum on the array returned by the map method
# 5. finally return the total of the sum (integer)

 def ascii_value(string)
   array = string.split(//)

   array.map! do |char|
     char.ord
   end

   array.sum
 end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
