# input
# year (integer)
# output
# true or false
#
# before 1752 leap years were any year divisible by 4
# after 1752 leap years were any year divisible by 4 but
# if also divisible by a 100 then it also needs to be divisible by 400 to be a leap year.
#
# 1. check if the year argument is an integer greater than 1752
#   - if it is not find out if it is divisible by 4
#       if it is then return true
#       if it is not then return false
#
#   -if it is then check if it is divisible by 4 and not by 100
      # -if it is then return true
      # -if it is not then check if year is divisible by 400
#           if so return true
#           if not retunr false
#     - finally return false for everything else


  def leap_year?(year)

    if year <= 1752
        year % 4 == 0
    elsif year > 1752
      if year % 4 == 0 && year % 100 != 0
        true
      elsif year % 400 == 0
        true
      else
        false
      end
    else
      false
    end
  end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true
