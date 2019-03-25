def palindrome?(object)
  object == object.reverse
end

puts palindrome?('madam')
puts palindrome?('Madam')
puts palindrome?([1, 2, 3, 3, 2, 1])
puts palindrome?(['move', 'dome', 'love'])
