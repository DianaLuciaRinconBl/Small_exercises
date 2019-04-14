def triangle_upper_right(num)
  arr = (1..num).to_a

  arr.each do |number|
    string = "*" * number
    puts string.rjust(num)
  end
end

triangle_upper_right(5)
puts "=================="


def triangle_upper_left(num)
  arr = (1..num).to_a

  arr.each do |number|
    string = "*" * number
    puts string.ljust(num)
  end
end

triangle_upper_left(5)
puts "=================="


def triangle_bottom_right(num)
  arr = (1..num).to_a.reverse

  arr.each do |number|
    string = "*" * number
    puts string.rjust(num)
  end
end

triangle_bottom_right(5)
puts "=================="


def triangle_bottom_left(num)
  arr = (1..num).to_a.reverse

  arr.each do |number|
    string = "*" * number
    puts string.ljust(num)
  end
end

triangle_bottom_left(5)
puts "=================="
