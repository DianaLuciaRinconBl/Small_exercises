DIGITS = {'0' => 0, '1' => 1,'2' => 2,'3' => 3,'4' => 4,
          '5' => 5,'6' => 6,'7' => 7,'8' => 8,'9' => 9 }

def string_to_signed_integer(string)
  if string.start_with?("-") || string.start_with?("+")
      str = string.delete("+, -")
    else
      str = string
  end

  digits = str.chars.map {|num| DIGITS[num]}

  value = 0
  digits.each {|num| value = 10 * value + num}
  value

  if string.start_with?('-')
    -value 
  else
    value
  end
end




puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
puts string_to_signed_integer('-100') == -100

# puts string_to_integer('+1234') == 1234
