# input
# integer
# output
# string => century number + ending st, nd, rd, or th
#
# enter an integer that is a year and output the century + ending st, nd, rd, or th
#
# 1. define method that takes an argument (integer)
# 2. check if the integer ends in 00
#   1. if so then divide integer by 100 and assign in a variable
#   2. if not divide integer by 100 and add 1 and assign in a variable
# 3. check which is the appropiate ending st, nd, rd, or th
#   1. if integer ends in 1 then st
#   2. if integer ends in 2 then nd
#   3. if integer ends in 3 then rd
#   4. if integer ends in other then th
# 4. return the variable plus the ending as a string object


def century(year)
  if year % 100 == 0
    year /= 100
  else
    year /= 100 + 1
  end

  return "#{year}th" if [11, 12, 13].include?(year % 100)

  case year % 10
  when 1 then "#{year}st"
  when 2 then "#{year}nd"
  when 3 then "#{year}rd"
  else "#{year}th"
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
