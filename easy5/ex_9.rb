# input
# string with double characters
# output
# string with only singles charcters
#
# Write a method that takes a string and returns a new string with all consecutive
# duplicated characters removed
#
# 1. Define a method that takes a single argument (string)
# 2. initialise a new array
# 3. apply chars method to original array and assign to a variable
# 4. use each_with_index to iterate through string
# 5. compare current character to the one following (char == (index + 1))
#   if true then next
#     if false then add current char to new_array
# 6. return new_array.join

def crunch(string)
  new_array = [ ]

  original_string_arr = string.chars

  original_string_arr.each_with_index do |char, index|
    if char != original_string_arr[index + 1]
      new_array << char
    end
  end

  new_array.join
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
