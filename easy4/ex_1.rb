# input
# 2 strings
# output
# short + long + short


def short_long_short(string1, string2)
  long_string = ' '
  short_string = ' '

  if string1.size > string2.size
    long_string = string1
    short_string = string2
    short_string + long_string + short_string
  elsif string2.size > string1.size
    long_string = string2
    short_string = string1
    short_string + long_string + short_string
  end

end

puts short_long_short('abc', 'defgh') #== "abcdefghabc"
puts short_long_short('abcde', 'fgh') #== "fghabcdefgh"
puts short_long_short('', 'xyz') #== "xyz"
