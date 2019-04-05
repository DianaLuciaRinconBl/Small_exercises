# input
# strings
# output
# strings with swaped first and last letters/each word
#
# given a string separated by spaces, swap the first and last character of each string.
#
# 1. Define a method
# 2. create an array and containing each word in the string as separate elements in the array
# 2.1 Initialise a new array (new_string)
# 3. transform using map/iterate through the array
#   1. swap first and last letter of each element within array
#   2. use chars on each string to separate string
#   3. assign each first and last character to variables
#   4. swap characters
#   5. append updated word to new_string
# 4. convert the return value of the map method to a string separated by spaces (use method join)


def swap(string)
  string = string.split
  new_string = []


  string.map do |word|
    word = word.chars
    c1 = word[0]
    c2 = word[-1]

    word[0] = c2
    word[-1] = c1

    new_string << word.join

  end

   new_string.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
