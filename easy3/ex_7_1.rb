def eveny(array)
  new_array = []
  counter = 0

  loop do
    break if counter == array.size

    if counter.odd?
      new_array << array[counter]
    end

    counter += 1
  end
  new_array
end




p eveny([2, 3, 4, 5, 6]) == [3, 5]
p eveny([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p eveny(['abc', 'def']) == ['def']
p eveny([000, 123]) == [123]
p eveny([]) == []
