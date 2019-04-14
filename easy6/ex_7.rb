def halvsies(array)
  total_elements = array.size

  if total_elements % 2 == 1
    array1, array2 = array.first((total_elements / 2) + 1), array.last(total_elements / 2)
  else
    array1, array2 = array.first(total_elements / 2), array.last(total_elements / 2)
  end
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
