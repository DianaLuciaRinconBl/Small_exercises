HOUR_MINUTES = 60

def after_midnight(time)
  time = time.partition(':')
  if time[0].to_i == 24
    0
  else
    time = time[0].to_i * HOUR_MINUTES + time[2].to_i
  end
  #p time
end

def before_midnight(time)
  time = time.partition(':')
  if time[0].to_i == 24
    0
  else
    time = time[0].to_i * HOUR_MINUTES - time[2].to_i
  end
  #p time
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
puts after_midnight('23:00') == 1380
puts before_midnight('23:00') == 1380
puts after_midnight("13:20") == 800
puts before_midnight("13:20") == 760
