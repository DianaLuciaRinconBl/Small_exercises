# input
# array
# output
# array of every other elements in original array at odd indices


def oddities(array)
  new_array = [ ]

  array.each_with_index do |item, index|
    new_array << item if index.even?
  end
  new_array

end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
