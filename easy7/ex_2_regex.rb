# input string
# output hash
#
# Return a hash that contains 3 entries: number of lowerletters,
# number of capitalised letters and number of neither.
#
# 1. define a method that takes a string
# 2. find out if the string has any lower letters
# 3. find out if string has any capitalised letters
# 4. find out if the string contains any either lower nor caliptalised elements
# 5. return a new hash that contains the number of each category
#
# 1. Define a method called letter_case_count
# 2. initialise a result variable to a hash called new_hash and set keys to lowercase, uppercase, neither
# and set values to arrays and apply method count to each of them
# 3. use method chars to divide the string into individual characters and assing to variable 'string'
# 4. loop through each of the characters in 'string'
# 5. if the character is lowercase then add it to the new_hash['lowercase']
# 6. if the charcter is uppercase then add it to the new_hash['uppercase']
# 7. if the character is neither then add it to the new_hash['neither']
# 8. return the new_hash


# def letter_case_count(string)
#   new_hash = {lowercase: 0, uppercase: 0, neither: 0}
#
#   string.chars.each do |char|
#     if ('a'..'z').include?(char)
#       new_hash[:lowercase] += 1
#     elsif ('A'..'Z').include?(char)
#       new_hash[:uppercase] += 1
#     else
#       new_hash[:neither] += 1
#     end
#   end
#   new_hash
# end

def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
