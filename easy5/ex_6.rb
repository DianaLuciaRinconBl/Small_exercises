# input
# string
# output
# hash
#
# Pass a string and return a hash that contains the number of words that
# contain the same amount of characters. {key = #characters, value = # words}
#
#
# 1. define a method that takes an argument
# 2. create a new hash =>new_hash
# 3. Split the string argument into an array of strings and assign to variable
# 4. iterate through each word using each
#   1. check if the key for the current word.size already exist
#     - if true then add another value count
#     -if false then create a new key value pair => add to exisitng new_hash
#MAYBE: create a counter variable to keep track of how many keys and values repeat
#   3. return the new_hash


def word_sizes(string)
  new_hash = { }
  string = string.split

  #key = 0
  string.each do |word|
    if new_hash.has_key?(word.size)
      new_hash[word.size] = new_hash[word.size] + 1
    else
      new_hash[word.size] = 1
    end
  end
  new_hash
end


puts word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
