DIGITS = {'0' => 0, '1' => 1,'2' => 2,'3' => 3,'4' => 4,
          '5' => 5,'6' => 6,'7' => 7,'8' => 8,'9' => 9,
          'A' => 10,'B' => 11,'C' => 12,'D' => 13,'E' => 14, 'F' => 15,
          'a' => 10,'b' => 11,'c' => 12,'d' => 13,'e' => 14, 'f' => 15 }

POSITIONS = { 8 => 268435456, #=> 0
              7 => 16777216, #=> 1
              6 => 1048576, #=> 2
              5 => 65536, #=> 3
              4 => 4096, #=> 4
              3 => 256, #=> 5
              2 => 16, #=> 6
              1 => 1 } #=> 7

def hexadecimal_to_integer(str)
  digits = str.chars.map {|num| DIGITS[num]}

  #p digits #=>[4, 13, 9, 15]

  index_positions = digits.size
  total = 0
  digits.each do |num|
    total = num * POSITIONS[index_positions] + total
    index_positions -= 1
  end
  total

end


puts hexadecimal_to_integer('4D9f') == 19871
puts hexadecimal_to_integer('D1ce') == 53710
puts hexadecimal_to_integer('2E6') == 742
