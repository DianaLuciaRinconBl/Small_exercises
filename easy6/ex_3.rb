def find_fibonacci_index_by_length(number)

  num1 = 1
  num2 = 1
  index = 2

  loop do
    index +=1
    total = num1 + num2
    break if total.to_s.size >= number

    num1 = num2
    num2 = total


  end
  index
end

puts find_fibonacci_index_by_length(2)          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
