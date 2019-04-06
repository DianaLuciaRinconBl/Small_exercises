# input
# strign with assortment of non-alphabetical characters
# output
# string only with white spaces
#
# replace all non-alphabetical characters with a single white space between strings
#
# 1. define the method that takes a string
# 2. split string
# 2.1 initialise a new string
# 3. interate using map  |word|
#   1. replace any non-alphanumeric character with a white space
#   2. add the word to new string
# 4. call split.join(' ') on new string

def cleanup(string)
  string = string.split
  new_string = []

  string.map do |word|
    if word.scan(/[^a-z]/)
      word.gsub!(/[^a-z]/," ")
      word
      if word.scan(/[a-z]/)
        word.gsub!(/\s+/," ")
        new_string << word
      else
        word.gsub!(/\s+/," ")
        new_string << word
      end
    else
      new_string << word
    end
    p new_string
  end

  final_string = [ ]
  new_string.each do |wo| #[" what s", "my", " ", "line "]
    if wo.split != []
      final_string << wo
    else
      wo
    end
   final_string
  end

  final_string.join(" ")
end

puts cleanup("---what's my +*& line?") == ' what s my line '
puts cleanup("---what's m +*& line?") == ' what s m line '
