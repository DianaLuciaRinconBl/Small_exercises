
HOUR_MINUTES = 60
DAY_HOURS = 24
MINUTES_DAY = HOUR_MINUTES * DAY_HOURS

def time_of_day(time)
  time = time % MINUTES_DAY
  hour, minutes = time.divmod(HOUR_MINUTES)
  sprintf("%02d:%02d",hour, minutes)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
puts time_of_day(754) == '12:34'
