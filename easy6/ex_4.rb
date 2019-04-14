def reverse!(array)
  index = array.size

  loop do
    index -= 1
    break if index <= 0
    element = array.shift
    array.insert(index, element)
  end
  array
end


list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []
