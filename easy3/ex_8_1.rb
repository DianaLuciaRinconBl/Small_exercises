def palindromic_array?(array)
  array == array.reverse
end

puts palindromic_array?([1, 2, 3, 3, 2, 1])
puts palindromic_array?(['move', 'dome', 'love'])
