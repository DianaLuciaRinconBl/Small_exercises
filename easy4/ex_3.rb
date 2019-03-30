# def leap_year?(year)
#   if year > 0
#      if year % 4 == 0
#       true unless year % 100 == 0
#       if year % 100 == 0
#         false unless year % 400 == 0
#       end
#     end
#   end
# end


#         if year % 100 == 0
#           if year % 400 == 0
#             true
#           end
#         end
#       end
#     end
# end
# #        true
# #      elsif year % 4 == 0 && year % 100 == 0
# #        true if year % 400 == 0
# #      else
# #        false
# #      end
# #    end
# # end
def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 4 &&  year % 100 == 0
    year % 400 == 0 
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
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
