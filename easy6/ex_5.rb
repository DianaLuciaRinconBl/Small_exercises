def reverse(array)
  new_array = [ ]
  array.each {|item| new_array.unshift(item)}
  new_array
end

puts reverse([1,2,3,4]) == [4,3,2,1]# => true
puts reverse(%w(a b e d c)) == %w(c d e b a)# => true
puts reverse(['abc']) == ['abc']# => true
puts reverse([]) == []
