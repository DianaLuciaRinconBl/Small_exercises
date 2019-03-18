# # Build a program that displays when the user will retire and how many years
# # she has to work till retirement.
#
# INPUT
# current age
# desired age for retirement
# OUTPUT
# year of retirement
# how many years to go
#
# MENTAL MODEL:
# Calculate the year of retirement and how many years to go from now, based on the
# person's current age and their desired age for retirement.
#
# VALIDATING EXAMPLES:
#
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
#
#
#
# What is your age? 50
# At what age would you like to retire? 67
#
# It's 2019. You will retire in 2036.
# You have only 17 years of work to go!
#
# 1. aks for current person's age
# 2. ask for desired retirement age
# 3. find out current year
#   - use date method?
# 4. calculate year of retirement
#   - minus the current age to the desired retirement age and thats how many years still to go
#   - then add the years to go to the current year and thats the year the person will retire
# 5. calculate how many years to go


puts "What is your age? "
age = gets. to_i

puts "At what age would you like to retire? "
desired_retirement = gets.to_i

years_to_go = desired_retirement - age
current_year = Time.now.year
year_retirement = current_year + years_to_go

puts "It's #{current_year}." + "You will retire in #{year_retirement}."
puts "You have only #{years_to_go} years of work to go!"
