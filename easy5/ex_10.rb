# input
# string
# output
# print within a box

def print_in_box(string)
  dash_start = "+-"
  dash_end = "-+"
  dash = "-"
  side = "|"
  s_size = string.size

  dash =  dash * string.size  #string before the integer
  puts dash_start + dash + dash_end
  puts side + " " * (s_size + 2) + side
  puts side + string.center(s_size + 2) + side
  puts side + " " * (s_size + 2) + side
  puts dash_start + dash + dash_end

end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
