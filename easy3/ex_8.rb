# input
# string
# output
# true if palindrome or false otherwise


def palindrome?(string)
  string == string.reverse
end

puts palindrome?('madam')
puts palindrome?('Madam') # (case matters)
puts palindrome?("madam i'm adam") # (all characters matter)
puts palindrome?('356653')
